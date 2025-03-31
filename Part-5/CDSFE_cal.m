%% 90% training data CDSFE bagging

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Auto_data(176+i,1) - hist_avg_90(i,1)).^2 );
    b = ( (Auto_data(176+i,1) - f_Auto_r_90(i,1)).^2 ); % 5% significance level
    c = ( (Auto_data(176+i,1) - f_Auto_r_90(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Auto_90(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Auto_90(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Bank_data(176+i,1) - hist_avg_Bank_90(i,1)).^2 );
    b = ( (Bank_data(176+i,1) - f_Bank_r_90(i,1)).^2 ); % 5% significance level
    c = ( (Bank_data(176+i,1) - f_Bank_r_90(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Bank_90(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Bank_90(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Cap_data(176+i,1) - hist_avg_Cap_90(i,1)).^2 );
    b = ( (Cap_data(176+i,1) - f_Cap_r_90(i,1)).^2 ); % 5% significance level
    c = ( (Cap_data(176+i,1) - f_Cap_r_90(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Cap_90(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Cap_90(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Con_data(176+i,1) - hist_avg_Con_90(i,1)).^2 );
    b = ( (Con_data(176+i,1) - f_Con_r_90(i,1)).^2 ); % 5% significance level
    c = ( (Con_data(176+i,1) - f_Con_r_90(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Con_90(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Con_90(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Metal_data(176+i,1) - hist_avg_Metal_90(i,1)).^2 );
    b = ( (Metal_data(176+i,1) - f_Metal_r_90(i,1)).^2 ); % 5% significance level
    c = ( (Metal_data(176+i,1) - f_Metal_r_90(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Metal_90(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Metal_90(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end


sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Oil_data(176+i,1) - hist_avg_Oil_90(i,1)).^2 );
    b = ( (Oil_data(176+i,1) - f_Oil_r_90(i,1)).^2 ); % 5% significance level
    c = ( (Oil_data(176+i,1) - f_Oil_r_90(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Oil_90(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Oil_90(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Power_data(176+i,1) - hist_avg_Power_90(i,1)).^2 );
    b = ( (Power_data(176+i,1) - f_Power_r_90(i,1)).^2 ); % 5% significance level
    c = ( (Power_data(176+i,1) - f_Power_r_90(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Power_90(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Power_90(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Realty_data(176+i,1) - hist_avg_Realty_90(i,1)).^2 );
    b = ( (Realty_data(176+i,1) - f_Realty_r_90(i,1)).^2 ); % 5% significance level
    c = ( (Realty_data(176+i,1) - f_Realty_r_90(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Realty_90(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Realty_90(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Teck_data(176+i,1) - hist_avg_Teck_90(i,1)).^2 );
    b = ( (Teck_data(176+i,1) - f_Teck_r_90(i,1)).^2 ); % 5% significance level
    c = ( (Teck_data(176+i,1) - f_Teck_r_90(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Teck_90(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Teck_90(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end


%% 60% training data CDSFE bagging

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Auto_data(118+i,1) - hist_avg_Auto_60(i,1)).^2 );
    b = ( (Auto_data(118+i,1) - f_Auto_r_60(i,1)).^2 ); % 5% significance level
    c = ( (Auto_data(118+i,1) - f_Auto_r_60(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Auto_60(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Auto_60(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Bank_data(118+i,1) - hist_avg_Bank_60(i,1)).^2 );
    b = ( (Bank_data(118+i,1) - f_Bank_r_60(i,1)).^2 ); % 5% significance level
    c = ( (Bank_data(118+i,1) - f_Bank_r_60(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Bank_60(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Bank_60(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Cap_data(118+i,1) - hist_avg_Cap_60(i,1)).^2 );
    b = ( (Cap_data(118+i,1) - f_Cap_r_60(i,1)).^2 ); % 5% significance level
    c = ( (Cap_data(118+i,1) - f_Cap_r_60(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Cap_60(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Cap_60(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Con_data(118+i,1) - hist_avg_Con_60(i,1)).^2 );
    b = ( (Con_data(118+i,1) - f_Con_r_60(i,1)).^2 ); % 5% significance level
    c = ( (Con_data(118+i,1) - f_Con_r_60(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Con_60(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Con_60(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Metal_data(118+i,1) - hist_avg_Metal_60(i,1)).^2 );
    b = ( (Metal_data(118+i,1) - f_Metal_r_60(i,1)).^2 ); % 5% significance level
    c = ( (Metal_data(118+i,1) - f_Metal_r_60(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Metal_60(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Metal_60(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end


sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Oil_data(118+i,1) - hist_avg_Oil_60(i,1)).^2 );
    b = ( (Oil_data(118+i,1) - f_Oil_r_60(i,1)).^2 ); % 5% significance level
    c = ( (Oil_data(118+i,1) - f_Oil_r_60(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Oil_60(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Oil_60(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Power_data(118+i,1) - hist_avg_Power_60(i,1)).^2 );
    b = ( (Power_data(118+i,1) - f_Power_r_60(i,1)).^2 ); % 5% significance level
    c = ( (Power_data(118+i,1) - f_Power_r_60(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Power_60(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Power_60(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Realty_data(118+i,1) - hist_avg_Realty_60(i,1)).^2 );
    b = ( (Realty_data(118+i,1) - f_Realty_r_60(i,1)).^2 ); % 5% significance level
    c = ( (Realty_data(118+i,1) - f_Realty_r_60(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Realty_60(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Realty_60(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Teck_data(118+i,1) - hist_avg_Teck_60(i,1)).^2 );
    b = ( (Teck_data(118+i,1) - f_Teck_r_60(i,1)).^2 ); % 5% significance level
    c = ( (Teck_data(118+i,1) - f_Teck_r_60(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Teck_60(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Teck_60(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end


%% 60% training data CDSFE bagging new(SPI)

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Auto_data(118+i,1) - hist_avg_Auto_60(i,1)).^2 );
    b = ( (Auto_data(118+i,1) - f_Auto_r_60_new(i,1)).^2 ); % 5% significance level
    c = ( (Auto_data(118+i,1) - f_Auto_r_60_new(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Auto_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Auto_60_new(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Bank_data(118+i,1) - hist_avg_Bank_60(i,1)).^2 );
    b = ( (Bank_data(118+i,1) - f_Bank_r_60_new(i,1)).^2 ); % 5% significance level
    c = ( (Bank_data(118+i,1) - f_Bank_r_60_new(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Bank_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Bank_60_new(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Cap_data(118+i,1) - hist_avg_Cap_60(i,1)).^2 );
    b = ( (Cap_data(118+i,1) - f_Cap_r_60_new(i,1)).^2 ); % 5% significance level
    c = ( (Cap_data(118+i,1) - f_Cap_r_60_new(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Cap_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Cap_60_new(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Con_data(118+i,1) - hist_avg_Con_60(i,1)).^2 );
    b = ( (Con_data(118+i,1) - f_Con_r_60_new(i,1)).^2 ); % 5% significance level
    c = ( (Con_data(118+i,1) - f_Con_r_60_new(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Con_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Con_60_new(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Metal_data(118+i,1) - hist_avg_Metal_60(i,1)).^2 );
    b = ( (Metal_data(118+i,1) - f_Metal_r_60_new(i,1)).^2 ); % 5% significance level
    c = ( (Metal_data(118+i,1) - f_Metal_r_60_new(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Metal_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Metal_60_new(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end


sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Oil_data(118+i,1) - hist_avg_Oil_60(i,1)).^2 );
    b = ( (Oil_data(118+i,1) - f_Oil_r_60_new(i,1)).^2 ); % 5% significance level
    c = ( (Oil_data(118+i,1) - f_Oil_r_60_new(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Oil_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Oil_60_new(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Power_data(118+i,1) - hist_avg_Power_60(i,1)).^2 );
    b = ( (Power_data(118+i,1) - f_Power_r_60_new(i,1)).^2 ); % 5% significance level
    c = ( (Power_data(118+i,1) - f_Power_r_60_new(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Power_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Power_60_new(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Realty_data(118+i,1) - hist_avg_Realty_60(i,1)).^2 );
    b = ( (Realty_data(118+i,1) - f_Realty_r_60_new(i,1)).^2 ); % 5% significance level
    c = ( (Realty_data(118+i,1) - f_Realty_r_60_new(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Realty_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Realty_60_new(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Teck_data(118+i,1) - hist_avg_Teck_60(i,1)).^2 );
    b = ( (Teck_data(118+i,1) - f_Teck_r_60_new(i,1)).^2 ); % 5% significance level
    c = ( (Teck_data(118+i,1) - f_Teck_r_60_new(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Teck_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Teck_60_new(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end


%% 60% training data CDSFE bagging MBB

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Auto_data(118+i,1) - hist_avg_Auto_60(i,1)).^2 );
    b = ( (Auto_data(118+i,1) - f_Auto_r_60_mbb(i,1)).^2 ); % 5% significance level
    c = ( (Auto_data(118+i,1) - f_Auto_r_60_mbb(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Auto_60_mbb(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Auto_60_mbb(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Bank_data(118+i,1) - hist_avg_Bank_60(i,1)).^2 );
    b = ( (Bank_data(118+i,1) - f_Bank_r_60_mbb(i,1)).^2 ); % 5% significance level
    c = ( (Bank_data(118+i,1) - f_Bank_r_60_mbb(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Bank_60_mbb(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Bank_60_mbb(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Cap_data(118+i,1) - hist_avg_Cap_60(i,1)).^2 );
    b = ( (Cap_data(118+i,1) - f_Cap_r_60_mbb(i,1)).^2 ); % 5% significance level
    c = ( (Cap_data(118+i,1) - f_Cap_r_60_mbb(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Cap_60_mbb(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Cap_60_mbb(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Con_data(118+i,1) - hist_avg_Con_60(i,1)).^2 );
    b = ( (Con_data(118+i,1) - f_Con_r_60_mbb(i,1)).^2 ); % 5% significance level
    c = ( (Con_data(118+i,1) - f_Con_r_60_mbb(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Con_60_mbb(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Con_60_mbb(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Metal_data(118+i,1) - hist_avg_Metal_60(i,1)).^2 );
    b = ( (Metal_data(118+i,1) - f_Metal_r_60_mbb(i,1)).^2 ); % 5% significance level
    c = ( (Metal_data(118+i,1) - f_Metal_r_60_mbb(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Metal_60_mbb(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Metal_60_mbb(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end


sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Oil_data(118+i,1) - hist_avg_Oil_60(i,1)).^2 );
    b = ( (Oil_data(118+i,1) - f_Oil_r_60_mbb(i,1)).^2 ); % 5% significance level
    c = ( (Oil_data(118+i,1) - f_Oil_r_60_mbb(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Oil_60_mbb(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Oil_60_mbb(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Power_data(118+i,1) - hist_avg_Power_60(i,1)).^2 );
    b = ( (Power_data(118+i,1) - f_Power_r_60_mbb(i,1)).^2 ); % 5% significance level
    c = ( (Power_data(118+i,1) - f_Power_r_60_mbb(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Power_60_mbb(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Power_60_mbb(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Realty_data(118+i,1) - hist_avg_Realty_60(i,1)).^2 );
    b = ( (Realty_data(118+i,1) - f_Realty_r_60_mbb(i,1)).^2 ); % 5% significance level
    c = ( (Realty_data(118+i,1) - f_Realty_r_60_mbb(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Realty_60_mbb(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Realty_60_mbb(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end

sum_squared_error_bench = 0;
sum_squared_error_alt_5 = 0;
sum_squared_error_alt_1 = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Teck_data(118+i,1) - hist_avg_Teck_60(i,1)).^2 );
    b = ( (Teck_data(118+i,1) - f_Teck_r_60_mbb(i,1)).^2 ); % 5% significance level
    c = ( (Teck_data(118+i,1) - f_Teck_r_60_mbb(i,2)).^2 ); % 1% significance level
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt_5 = sum_squared_error_alt_5 + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Teck_60_mbb(i,1) = sum_squared_error_bench - sum_squared_error_alt_5;
    cdsfe_Teck_60_mbb(i,2) = sum_squared_error_bench - sum_squared_error_alt_1;
end


%% 90% training data CDSFE LASSO
sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Auto_data(176+i,1) - hist_avg_90(i,1)).^2 );
    b = ( (Auto_data(176+i,1) - Auto_lasso_fc(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Auto_lasso_90(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Bank_data(176+i,1) - hist_avg_Bank_90(i,1)).^2 );
    b = ( (Bank_data(176+i,1) - Bank_lasso_fc(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Bank_lasso_90(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Cap_data(176+i,1) - hist_avg_Cap_90(i,1)).^2 );
    b = ( (Cap_data(176+i,1) - Cap_lasso_fc(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Cap_lasso_90(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Con_data(176+i,1) - hist_avg_Con_90(i,1)).^2 );
    b = ( (Con_data(176+i,1) - Con_lasso_fc(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Con_lasso_90(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Metal_data(176+i,1) - hist_avg_Metal_90(i,1)).^2 );
    b = ( (Metal_data(176+i,1) - Metal_lasso_fc(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Metal_lasso_90(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end


sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Oil_data(176+i,1) - hist_avg_Oil_90(i,1)).^2 );
    b = ( (Oil_data(176+i,1) - Oil_lasso_fc(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Oil_lasso_90(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Power_data(176+i,1) - hist_avg_Power_90(i,1)).^2 );
    b = ( (Power_data(176+i,1) - Power_lasso_fc(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Power_lasso_90(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Realty_data(176+i,1) - hist_avg_Realty_90(i,1)).^2 );
    b = ( (Realty_data(176+i,1) - Realty_lasso_fc(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Realty_lasso_90(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:19
    % Calculating squared error for each observation and forecast
    a = ( (Teck_data(176+i,1) - hist_avg_Teck_90(i,1)).^2 );
    b = ( (Teck_data(176+i,1) - Teck_lasso_fc(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Teck_lasso_90(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end


%% 60% training data CDSFE LASSO

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Auto_data(118+i,1) - hist_avg_Auto_60(i,1)).^2 );
    b = ( (Auto_data(118+i,1) - Auto_lasso_fc_60(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Auto_lasso_60(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Bank_data(118+i,1) - hist_avg_Bank_60(i,1)).^2 );
    b = ( (Bank_data(118+i,1) - Bank_lasso_fc_60(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Bank_lasso_60(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Cap_data(118+i,1) - hist_avg_Cap_60(i,1)).^2 );
    b = ( (Cap_data(118+i,1) - Cap_lasso_fc_60(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Cap_lasso_60(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Con_data(118+i,1) - hist_avg_Con_60(i,1)).^2 );
    b = ( (Con_data(118+i,1) - Con_lasso_fc_60(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Con_lasso_60(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Metal_data(118+i,1) - hist_avg_Metal_60(i,1)).^2 );
    b = ( (Metal_data(118+i,1) - Metal_lasso_fc_60(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Metal_lasso_60(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end


sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Oil_data(118+i,1) - hist_avg_Oil_60(i,1)).^2 );
    b = ( (Oil_data(118+i,1) - Oil_lasso_fc_60(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Oil_lasso_60(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Power_data(118+i,1) - hist_avg_Power_60(i,1)).^2 );
    b = ( (Power_data(118+i,1) - Power_lasso_fc_60(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Power_lasso_60(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Realty_data(118+i,1) - hist_avg_Realty_60(i,1)).^2 );
    b = ( (Realty_data(118+i,1) - Realty_lasso_fc_60(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Realty_lasso_60(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Teck_data(118+i,1) - hist_avg_Teck_60(i,1)).^2 );
    b = ( (Teck_data(118+i,1) - Teck_lasso_fc_60(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Teck_lasso_60(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end


%% 60% training data CDSFE LASSO new(SPI)

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Auto_data(118+i,1) - hist_avg_Auto_60(i,1)).^2 );
    b = ( (Auto_data(118+i,1) - Auto_lasso_fc_60_new(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Auto_lasso_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Bank_data(118+i,1) - hist_avg_Bank_60(i,1)).^2 );
    b = ( (Bank_data(118+i,1) - Bank_lasso_fc_60_new(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Bank_lasso_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Cap_data(118+i,1) - hist_avg_Cap_60(i,1)).^2 );
    b = ( (Cap_data(118+i,1) - Cap_lasso_fc_60_new(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Cap_lasso_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Con_data(118+i,1) - hist_avg_Con_60(i,1)).^2 );
    b = ( (Con_data(118+i,1) - Con_lasso_fc_60_new(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    sum_squared_error_alt_1 = sum_squared_error_alt_1 + c;
    % Calculating MSE for each forecasted value
    cdsfe_Con_lasso_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Metal_data(118+i,1) - hist_avg_Metal_60(i,1)).^2 );
    b = ( (Metal_data(118+i,1) - Metal_lasso_fc_60_new(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Metal_lasso_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end


sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Oil_data(118+i,1) - hist_avg_Oil_60(i,1)).^2 );
    b = ( (Oil_data(118+i,1) - Oil_lasso_fc_60_new(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Oil_lasso_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Power_data(118+i,1) - hist_avg_Power_60(i,1)).^2 );
    b = ( (Power_data(118+i,1) - Power_lasso_fc_60_new(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Power_lasso_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Realty_data(118+i,1) - hist_avg_Realty_60(i,1)).^2 );
    b = ( (Realty_data(118+i,1) - Realty_lasso_fc_60_new(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Realty_lasso_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end

sum_squared_error_bench = 0;
sum_squared_error_alt = 0;
for i=1:77
    % Calculating squared error for each observation and forecast
    a = ( (Teck_data(118+i,1) - hist_avg_Teck_60(i,1)).^2 );
    b = ( (Teck_data(118+i,1) - Teck_lasso_fc_60_new(i,1)).^2 );
    % Summing up the squared error in each iteration
    sum_squared_error_bench = sum_squared_error_bench + a;
    sum_squared_error_alt = sum_squared_error_alt + b;
    % Calculating MSE for each forecasted value
    cdsfe_Teck_lasso_60_new(i,1) = sum_squared_error_bench - sum_squared_error_alt;
end
