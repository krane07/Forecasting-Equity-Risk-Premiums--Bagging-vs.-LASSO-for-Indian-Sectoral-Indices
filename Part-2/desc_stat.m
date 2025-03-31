function stat = desc_stat(data)
% USER DEFINED FUNCTION TO CALCULATE DESCRIPTIVE STATISTICS
[~,col] = size(data);
col = col + 1;
% Calculating Mean
stat(1,:) = mean(data);
% Calculating Median
stat(2,:) = median(data);
% Calculating Standard Deviation
stat(3,:) = std(data); 
% Calculating Skewness
stat(4,:) = skewness(data);
% Calculating Kurtosis
stat(5,:) = kurtosis(data);
% Calculating Maximum value
stat(6,:) = max(data);
% Calculating Minimum value
stat(7,:) = min(data);
% stat(1,col) = "Mean"; 
% stat(2,col) = "Median";
% stat(3,col) = "Standard Deviation"; 
% stat(4,col) = "Skewness"; 
% stat(5,col) = "Kurtosis"; 
% stat(6,col) = "Maximum";
% stat(7,col) = "Minimum"; 
% % Calculating 1st Quartile 
% stat(8,1) = "1st Quartile"; stat(2,2) = prctile(data, 25);
% % Calculating 3rd Quartile
% stat(9,1) = "3rd Quartile"; stat(5,2) = prctile(data, 75);
% % Calculating Variance
% stat(8,1) = "Variance"; stat(8,2) = var(data);
end
