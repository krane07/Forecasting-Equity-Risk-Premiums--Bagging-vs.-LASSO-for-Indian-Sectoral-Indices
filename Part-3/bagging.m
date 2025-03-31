function fc = bagging(X, Y, block_size, num_samples, CBB_sampling)
    [T, num_var] = size(X);
    T = T-1;
    if CBB_sampling
    % Circularize the data by wrapping around for Circular Block Bootstrap
        new_X = [X(1:end-1,:); X(1:block_size-1,:)];
        new_Y = [Y(1:end-1,:); Y(1:block_size-1,:)];
    else
    %Moving Block Bootstrap
        new_X = X(1:end-1,:);
        new_Y = Y(1:end-1,:);
    end
    % fc_10 = zeros(num_samples,1);
    fc_5 = zeros(num_samples,1);
    fc_1 = zeros(num_samples,1);
    t_crit(1) = tinv(0.95,T-num_var-1);
    t_crit(2) = tinv(0.99,T-num_var-1);
    for i = 1:num_samples
        % Randomly select starting indices for the blocks
        if CBB_sampling
            block_starts = randi(T, ceil(T/block_size), 1);
        else
            % For MBB Sampling 
            block_starts = randi(T - block_size, ceil(T/block_size), 1);
        end
        
        bootstrap_indices = [];
        
        % Construct bootstrap indices
        for j = 1:length(block_starts)
            bootstrap_indices = [bootstrap_indices, block_starts(j):(block_starts(j) + block_size - 1)];
        end

        % Truncate to T indices if oversampled
        bootstrap_indices = bootstrap_indices(1:T);

        % Extract the bootstrap sample
        X_bootstrap = new_X(bootstrap_indices, :);
        Y_bootstrap = new_Y(bootstrap_indices);

        % Fit linear regression model
        [~,~,t_stat,~]= cust_fitlm(X_bootstrap,Y_bootstrap,true);
        real_t_stat = real(t_stat);
       
        % Identify elements that are greater than 0.05 or NaN
        toZero_5 = (abs(real_t_stat) > abs(t_crit(1)));
        toZero_5(1) = false;
        indices_5 = find(toZero_5);
        adjustedIndices_5 = indices_5 - 1;
        [new_beta_5,~,~,~] =cust_fitlm(X_bootstrap(:,adjustedIndices_5), Y_bootstrap,true);
        fc_5(i,1) = new_beta_5(1) + sum(new_beta_5(2:end)' .* X(end,adjustedIndices_5));

        % Identify elements that are greater than 0.01 or NaN
        toZero_1 = (abs(real_t_stat) > abs(t_crit(2)));
        toZero_1(1) = false;
        indices_1 = find(toZero_1);
        adjustedIndices_1 = indices_1 - 1;
        [new_beta_1,~,~,~] = cust_fitlm(X_bootstrap(:,adjustedIndices_1), Y_bootstrap,true);
        fc_1(j,1) = new_beta_1(1) + sum(new_beta_1(2:end)' .* X(end,adjustedIndices_1));
        clear t_stat;
    end
    f_all = [fc_5 , fc_1];
    fc = mean(f_all);
end