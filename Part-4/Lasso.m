%% 90% training data
% BSE AUTO
for i = 176:194
    Y_train = Auto_data(2:i,1);
    X_train = [Auto_data(1:i-1,2:6), Auto_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Auto_data(i,2:6), Auto_data(i,8), Com_var(i,1:6)];
    % y_test = Auto_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Auto_lasso_fc(i-175,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Auto = mse_cal(Auto_data(177:end,1),Auto_lasso_fc(:,1));

% BSE BANKEX
for i = 176:194
    Y_train = Bank_data(2:i,1);
    X_train = [Bank_data(1:i-1,2:6), Bank_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Bank_data(i,2:6), Bank_data(i,8), Com_var(i,1:6)];
    % y_test = Bank_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Bank_lasso_fc(i-175,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Bank = mse_cal(Bank_data(177:end,1),Bank_lasso_fc(:,1));

% BSE CAPITAL GOODS
for i = 176:194
    Y_train = Cap_data(2:i,1);
    X_train = [Cap_data(1:i-1,2:6), Cap_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Cap_data(i,2:6), Cap_data(i,8), Com_var(i,1:6)];
    % y_test = Cap_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Cap_lasso_fc(i-175,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Cap = mse_cal(Cap_data(177:end,1),Cap_lasso_fc(:,1));

% BSE CONSUMER DURABLES
for i = 176:194
    Y_train = Con_data(2:i,1);
    X_train = [Con_data(1:i-1,2:6), Con_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Con_data(i,2:6), Con_data(i,8), Com_var(i,1:6)];
    % y_test = Con_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Con_lasso_fc(i-175,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Con = mse_cal(Con_data(177:end,1),Con_lasso_fc(:,1));

% BSE METAL
for i = 176:194
    Y_train = Metal_data(2:i,1);
    X_train = [Metal_data(1:i-1,2:6), Metal_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Metal_data(i,2:6), Metal_data(i,8), Com_var(i,1:6)];
    % y_test = Metal_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Metal_lasso_fc(i-175,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Metal = mse_cal(Metal_data(177:end,1),Metal_lasso_fc(:,1));

% BSE OIL
for i = 176:194
    Y_train = Oil_data(2:i,1);
    X_train = [Oil_data(1:i-1,2:6), Oil_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Oil_data(i,2:6), Oil_data(i,8), Com_var(i,1:6)];
    % y_test = Oil_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Oil_lasso_fc(i-175,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Oil = mse_cal(Oil_data(177:end,1),Oil_lasso_fc(:,1));

% BSE POWER
for i = 176:194
    Y_train = Power_data(2:i,1);
    X_train = [Power_data(1:i-1,2:6), Power_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Power_data(i,2:6), Power_data(i,8), Com_var(i,1:6)];
    % y_test = Power_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Power_lasso_fc(i-175,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Power = mse_cal(Power_data(177:end,1),Power_lasso_fc(:,1));

% BSE REALTY
for i = 176:194
    Y_train = Realty_data(2:i,1);
    X_train = [Realty_data(1:i-1,2:6), Realty_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Realty_data(i,2:6), Realty_data(i,8), Com_var(i,1:6)];
    % y_test = Realty_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Realty_lasso_fc(i-175,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Realty = mse_cal(Realty_data(177:end,1),Realty_lasso_fc(:,1));

% BSE TECK
for i = 176:194
    Y_train = Teck_data(2:i,1);
    X_train = [Teck_data(1:i-1,2:6), Teck_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Teck_data(i,2:6), Teck_data(i,8), Com_var(i,1:6)];
    % y_test = Teck_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Teck_lasso_fc(i-175,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Teck = mse_cal(Teck_data(177:end,1),Teck_lasso_fc(:,1));



%% 60% training data
% BSE AUTO
for i = 118:194
    Y_train = Auto_data(2:i,1);
    X_train = [Auto_data(1:i-1,2:6), Auto_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Auto_data(i,2:6), Auto_data(i,8), Com_var(i,1:6)];
    % y_test = Auto_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Auto_lasso_fc_60(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Auto_60 = mse_cal(Auto_data(119:end,1),Auto_lasso_fc_60(:,1));

% BSE BANKEX
for i = 118:194
    Y_train = Bank_data(2:i,1);
    X_train = [Bank_data(1:i-1,2:6), Bank_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Bank_data(i,2:6), Bank_data(i,8), Com_var(i,1:6)];
    % y_test = Bank_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Bank_lasso_fc_60(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Bank_60 = mse_cal(Bank_data(119:end,1),Bank_lasso_fc_60(:,1));

% BSE CAPITAL GOODS
for i = 118:194
    Y_train = Cap_data(2:i,1);
    X_train = [Cap_data(1:i-1,2:6), Cap_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Cap_data(i,2:6), Cap_data(i,8), Com_var(i,1:6)];
    % y_test = Cap_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Cap_lasso_fc_60(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Cap_60 = mse_cal(Cap_data(119:end,1),Cap_lasso_fc_60(:,1));

% BSE CONSUMER DURABLES
for i = 118:194
    Y_train = Con_data(2:i,1);
    X_train = [Con_data(1:i-1,2:6), Con_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Con_data(i,2:6), Con_data(i,8), Com_var(i,1:6)];
    % y_test = Con_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Con_lasso_fc_60(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Con_60 = mse_cal(Con_data(119:end,1),Con_lasso_fc_60(:,1));

% BSE METAL
for i = 118:194
    Y_train = Metal_data(2:i,1);
    X_train = [Metal_data(1:i-1,2:6), Metal_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Metal_data(i,2:6), Metal_data(i,8), Com_var(i,1:6)];
    % y_test = Metal_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Metal_lasso_fc_60(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Metal_60 = mse_cal(Metal_data(119:end,1),Metal_lasso_fc_60(:,1));

% BSE OIL
for i = 118:194
    Y_train = Oil_data(2:i,1);
    X_train = [Oil_data(1:i-1,2:6), Oil_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Oil_data(i,2:6), Oil_data(i,8), Com_var(i,1:6)];
    % y_test = Oil_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Oil_lasso_fc_60(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Oil_60 = mse_cal(Oil_data(119:end,1),Oil_lasso_fc_60(:,1));

% BSE POWER
for i = 118:194
    Y_train = Power_data(2:i,1);
    X_train = [Power_data(1:i-1,2:6), Power_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Power_data(i,2:6), Power_data(i,8), Com_var(i,1:6)];
    % y_test = Power_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Power_lasso_fc_60(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Power_60 = mse_cal(Power_data(119:end,1),Power_lasso_fc_60(:,1));

% BSE REALTY
for i = 118:194
    Y_train = Realty_data(2:i,1);
    X_train = [Realty_data(1:i-1,2:6), Realty_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Realty_data(i,2:6), Realty_data(i,8), Com_var(i,1:6)];
    % y_test = Realty_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Realty_lasso_fc_60(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Realty_60 = mse_cal(Realty_data(119:end,1),Realty_lasso_fc_60(:,1));

% BSE TECK
for i = 118:194
    Y_train = Teck_data(2:i,1);
    X_train = [Teck_data(1:i-1,2:6), Teck_data(1:i-1,8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Teck_data(i,2:6), Teck_data(i,8), Com_var(i,1:6)];
    % y_test = Teck_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Teck_lasso_fc_60(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Teck_60 = mse_cal(Teck_data(119:end,1),Teck_lasso_fc_60(:,1));


%% 60% training data including FII and SPBSE variables
% BSE AUTO
for i = 118:194
    Y_train = Auto_data(2:i,1);
    X_train = [Auto_data(1:i-1,2:8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Auto_data(i,2:8), Com_var(i,1:6)];
    % y_test = Auto_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Auto_lasso_fc_60_new(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Auto_60_new = mse_cal(Auto_data(119:end,1),Auto_lasso_fc_60_new(:,1));

% BSE BANKEX
for i = 118:194
    Y_train = Bank_data(2:i,1);
    X_train = [Bank_data(1:i-1,2:8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Bank_data(i,2:8), Com_var(i,1:6)];
    % y_test = Bank_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Bank_lasso_fc_60_new(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Bank_60_new = mse_cal(Bank_data(119:end,1),Bank_lasso_fc_60_new(:,1));

% BSE CAPITAL GOODS
for i = 118:194
    Y_train = Cap_data(2:i,1);
    X_train = [Cap_data(1:i-1,2:8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Cap_data(i,2:8), Com_var(i,1:6)];
    % y_test = Cap_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Cap_lasso_fc_60_new(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Cap_60_new = mse_cal(Cap_data(119:end,1),Cap_lasso_fc_60_new(:,1));

% BSE CONSUMER DURABLES
for i = 118:194
    Y_train = Con_data(2:i,1);
    X_train = [Con_data(1:i-1,2:8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Con_data(i,2:8), Com_var(i,1:6)];
    % y_test = Con_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Con_lasso_fc_60_new(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Con_60_new = mse_cal(Con_data(119:end,1),Con_lasso_fc_60_new(:,1));

% BSE METAL
for i = 118:194
    Y_train = Metal_data(2:i,1);
    X_train = [Metal_data(1:i-1,2:8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Metal_data(i,2:8), Com_var(i,1:6)];
    % y_test = Metal_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Metal_lasso_fc_60_new(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Metal_60_new = mse_cal(Metal_data(119:end,1),Metal_lasso_fc_60_new(:,1));

% BSE OIL
for i = 118:194
    Y_train = Oil_data(2:i,1);
    X_train = [Oil_data(1:i-1,2:8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Oil_data(i,2:8), Com_var(i,1:6)];
    % y_test = Oil_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Oil_lasso_fc_60_new(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Oil_60_new = mse_cal(Oil_data(119:end,1),Oil_lasso_fc_60_new(:,1));

% BSE POWER
for i = 118:194
    Y_train = Power_data(2:i,1);
    X_train = [Power_data(1:i-1,2:8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Power_data(i,2:8), Com_var(i,1:6)];
    % y_test = Power_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Power_lasso_fc_60_new(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Power_60_new = mse_cal(Power_data(119:end,1),Power_lasso_fc_60_new(:,1));

% BSE REALTY
for i = 118:194
    Y_train = Realty_data(2:i,1);
    X_train = [Realty_data(1:i-1,2:8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Realty_data(i,2:8), Com_var(i,1:6)];
    % y_test = Realty_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Realty_lasso_fc_60_new(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Realty_60_new = mse_cal(Realty_data(119:end,1),Realty_lasso_fc_60_new(:,1));

% BSE TECK
for i = 118:194
    Y_train = Teck_data(2:i,1);
    X_train = [Teck_data(1:i-1,2:8), Com_var(1:i-1,1:6)];
    % Split data into training and testing
    
    X_test = [Teck_data(i,2:8), Com_var(i,1:6)];
    % y_test = Teck_data(i+1,1);
    
    % Standardize predictors using the training data
    [X_train, mu, sigma] = zscore(X_train);
    X_test = (X_test - mu) ./ sigma;
    
    % Perform lasso regression with 10-fold cross-validation
    [B, FitInfo] = lasso(X_train, Y_train, 'CV', 10);
    
    % Get the best coefficients
    idxLambdaMinMSE = FitInfo.IndexMinMSE;
    lassoCoefficients = B(:, idxLambdaMinMSE);
    
    % Forecast using the selected lasso model
    y_pred = X_test * lassoCoefficients + FitInfo.Intercept(idxLambdaMinMSE);
    
    % Store the prediction and calculate MSE
    Teck_lasso_fc_60_new(i-117,1) = y_pred;
    % mse_expanding(i) = mean((y_test - y_pred).^2);
end

mse_lasso_Teck_60_new = mse_cal(Teck_data(119:end,1),Teck_lasso_fc_60_new(:,1));
