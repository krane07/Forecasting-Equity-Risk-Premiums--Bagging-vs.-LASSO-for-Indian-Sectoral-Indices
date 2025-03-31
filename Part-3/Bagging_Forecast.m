
%% 90% training data and 10% test data
num_samples = 1000;
block_size = 19;

% BSE Auto
f_Auto_r_90 = zeros(19,2);
clear Y; clear X;
for i=176:194
    Y = Auto_data(2:i+1,1);
    X = [Auto_data(1:i,2:6), Auto_data(1:i,8), Com_var(1:i,1:6)];
    f_Auto_r_90(i-175,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Auto_r_90(:,1) = mse_cal(Auto_data(177:195,1),f_Auto_r_90(1:19,1));
mse_Auto_r_90(:,2)= mse_cal(Auto_data(177:195,1),f_Auto_r_90(1:19,2));



% BSE BANKEX
f_Bank_r_90 = zeros(19,2);
clear Y; clear X;
for i=176:194
    Y = Bank_data(2:i+1,1);
    X = [Bank_data(1:i,2:6), Bank_data(1:i,8), Com_var(1:i,1:6)];
    f_Bank_r_90(i-175,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Bank_r_90(:,1) = mse_cal(Bank_data(177:195,1),f_Bank_r_90(1:19,1));
mse_Bank_r_90(:,2)= mse_cal(Bank_data(177:195,1),f_Bank_r_90(1:19,2));



% BSE CAPITAL GOODS
f_Cap_r_90 = zeros(19,2);
clear Y; clear X;
for i=176:194
    Y = Cap_data(2:i+1,1);
    X = [Cap_data(1:i,2:6), Cap_data(1:i,8), Com_var(1:i,1:6)];
    f_Cap_r_90(i-175,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Cap_r_90(:,1) = mse_cal(Cap_data(177:195,1),f_Cap_r_90(1:19,1));
mse_Cap_r_90(:,2)= mse_cal(Cap_data(177:195,1),f_Cap_r_90(1:19,2));



% BSE CONSUMER DURABLES
f_Con_r_90 = zeros(19,2);
clear Y; clear X;
for i=176:194
    Y = Con_data(2:i+1,1);
    X = [Con_data(1:i,2:6), Con_data(1:i,8), Com_var(1:i,1:6)];
    f_Con_r_90(i-175,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Con_r_90(:,1) = mse_cal(Con_data(177:195,1),f_Con_r_90(1:19,1));
mse_Con_r_90(:,2)= mse_cal(Con_data(177:195,1),f_Con_r_90(1:19,2));



% BSE METAL
f_Metal_r_90 = zeros(19,2);
clear Y; clear X;
for i=176:194
    Y = Metal_data(2:i+1,1);
    X = [Metal_data(1:i,2:6), Metal_data(1:i,8), Com_var(1:i,1:6)];
    f_Metal_r_90(i-175,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Metal_r_90(:,1) = mse_cal(Metal_data(177:195,1),f_Metal_r_90(1:19,1));
mse_Metal_r_90(:,2)= mse_cal(Metal_data(177:195,1),f_Metal_r_90(1:19,2));



% BSE OIL & GAS
f_Oil_r_90 = zeros(19,2);
clear Y; clear X;
for i=176:194
    Y = Oil_data(2:i+1,1);
    X = [Oil_data(1:i,2:6), Oil_data(1:i,8), Com_var(1:i,1:6)];
    f_Oil_r_90(i-175,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Oil_r_90(:,1) = mse_cal(Oil_data(177:195,1),f_Oil_r_90(1:19,1));
mse_Oil_r_90(:,2)= mse_cal(Oil_data(177:195,1),f_Oil_r_90(1:19,2));



% BSE Power
f_Power_r_90 = zeros(19,2);
clear Y; clear X;
for i=176:194
    Y = Power_data(2:i+1,1);
    X = [Power_data(1:i,2:6), Power_data(1:i,8), Com_var(1:i,1:6)];
    f_Power_r_90(i-175,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Power_r_90(:,1) = mse_cal(Power_data(177:195,1),f_Power_r_90(1:19,1));
mse_Power_r_90(:,2)= mse_cal(Power_data(177:195,1),f_Power_r_90(1:19,2));



% BSE Realty
f_Realty_r_90 = zeros(19,2);
clear Y; clear X;
for i=176:194
    Y = Realty_data(2:i+1,1);
    X = [Realty_data(1:i,2:6), Realty_data(1:i,8), Com_var(1:i,1:6)];
    f_Realty_r_90(i-175,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Realty_r_90(:,1) = mse_cal(Realty_data(177:195,1),f_Realty_r_90(1:19,1));
mse_Realty_r_90(:,2)= mse_cal(Realty_data(177:195,1),f_Realty_r_90(1:19,2));



% BSE TECK
f_Teck_r_90 = zeros(19,2);
clear Y; clear X;
for i=176:194
    Y = Teck_data(2:i+1,1);
    X = [Teck_data(1:i,2:6), Teck_data(1:i,8), Com_var(1:i,1:6)];
    f_Teck_r_90(i-175,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Teck_r_90(:,1) = mse_cal(Teck_data(177:195,1),f_Teck_r_90(1:19,1));
mse_Teck_r_90(:,2)= mse_cal(Teck_data(177:195,1),f_Teck_r_90(1:19,2));


%% 60% training data 40% test data 
block_size = 77;

% BSE Auto
f_Auto_r_60 = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Auto_data(2:i+1,1);
    X = [Auto_data(1:i,2:6), Auto_data(1:i,8), Com_var(1:i,1:6)];
    f_Auto_r_60(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Auto_r_60(:,1) = mse_cal(Auto_data(119:195,1),f_Auto_r_60(1:77,1));
mse_Auto_r_60(:,2)= mse_cal(Auto_data(119:195,1),f_Auto_r_60(1:77,2));



% BSE BANKEX
f_Bank_r_60 = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Bank_data(2:i+1,1);
    X = [Bank_data(1:i,2:6), Bank_data(1:i,8), Com_var(1:i,1:6)];
    f_Bank_r_60(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Bank_r_60(:,1) = mse_cal(Bank_data(119:195,1),f_Bank_r_60(1:77,1));
mse_Bank_r_60(:,2)= mse_cal(Bank_data(119:195,1),f_Bank_r_60(1:77,2));



% BSE CAPITAL GOODS
f_Cap_r_60 = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Cap_data(2:i+1,1);
    X = [Cap_data(1:i,2:6), Cap_data(1:i,8), Com_var(1:i,1:6)];
    f_Cap_r_60(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Cap_r_60(:,1) = mse_cal(Cap_data(119:195,1),f_Cap_r_60(1:77,1));
mse_Cap_r_60(:,2)= mse_cal(Cap_data(119:195,1),f_Cap_r_60(1:77,2));



% BSE CONSUMER DURABLES
f_Con_r_60 = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Con_data(2:i+1,1);
    X = [Con_data(1:i,2:6), Con_data(1:i,8), Com_var(1:i,1:6)];
    f_Con_r_60(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Con_r_60(:,1) = mse_cal(Con_data(119:195,1),f_Con_r_60(1:77,1));
mse_Con_r_60(:,2)= mse_cal(Con_data(119:195,1),f_Con_r_60(1:77,2));



% BSE METAL
f_Metal_r_60 = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Metal_data(2:i+1,1);
    X = [Metal_data(1:i,2:6), Metal_data(1:i,8), Com_var(1:i,1:6)];
    f_Metal_r_60(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Metal_r_60(:,1) = mse_cal(Metal_data(119:195,1),f_Metal_r_60(1:77,1));
mse_Metal_r_60(:,2)= mse_cal(Metal_data(119:195,1),f_Metal_r_60(1:77,2));



% BSE OIL & GAS
f_Oil_r_60 = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Oil_data(2:i+1,1);
    X = [Oil_data(1:i,2:6), Oil_data(1:i,8), Com_var(1:i,1:6)];
    f_Oil_r_60(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Oil_r_60(:,1) = mse_cal(Oil_data(119:195,1),f_Oil_r_60(1:77,1));
mse_Oil_r_60(:,2)= mse_cal(Oil_data(119:195,1),f_Oil_r_60(1:77,2));



% BSE Power
f_Power_r_60 = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Power_data(2:i+1,1);
    X = [Power_data(1:i,2:6), Power_data(1:i,8), Com_var(1:i,1:6)];
    f_Power_r_60(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Power_r_60(:,1) = mse_cal(Power_data(119:195,1),f_Power_r_60(1:77,1));
mse_Power_r_60(:,2)= mse_cal(Power_data(119:195,1),f_Power_r_60(1:77,2));



% BSE Realty
f_Realty_r_60 = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Realty_data(2:i+1,1);
    X = [Realty_data(1:i,2:6), Realty_data(1:i,8), Com_var(1:i,1:6)];
    f_Realty_r_60(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Realty_r_60(:,1) = mse_cal(Realty_data(119:195,1),f_Realty_r_60(1:77,1));
mse_Realty_r_60(:,2)= mse_cal(Realty_data(119:195,1),f_Realty_r_60(1:77,2));



% BSE TECK
f_Teck_r_60 = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Teck_data(2:i+1,1);
    X = [Teck_data(1:i,2:6), Teck_data(1:i,8), Com_var(1:i,1:6)];
    f_Teck_r_60(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Teck_r_60(:,1) = mse_cal(Teck_data(119:195,1),f_Teck_r_60(1:77,1));
mse_Teck_r_60(:,2)= mse_cal(Teck_data(119:195,1),f_Teck_r_60(1:77,2));

%% 60% training data including SPI variable
block_size = 77;

% BSE Auto
f_Auto_r_60_new = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Auto_data(2:i+1,1);
    X = [Auto_data(1:i,2:8), Com_var(1:i,1:6)];
    f_Auto_r_60_new(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Auto_r_60_new(:,1) = mse_cal(Auto_data(119:195,1),f_Auto_r_60_new(1:77,1));
mse_Auto_r_60_new(:,2)= mse_cal(Auto_data(119:195,1),f_Auto_r_60_new(1:77,2));



% BSE BANKEX
f_Bank_r_60_new = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Bank_data(2:i+1,1);
    X = [Bank_data(1:i,2:8), Com_var(1:i,1:6)];
    f_Bank_r_60_new(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Bank_r_60_new(:,1) = mse_cal(Bank_data(119:195,1),f_Bank_r_60_new(1:77,1));
mse_Bank_r_60_new(:,2)= mse_cal(Bank_data(119:195,1),f_Bank_r_60_new(1:77,2));



% BSE CAPITAL GOODS
f_Cap_r_60_new = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Cap_data(2:i+1,1);
    X = [Cap_data(1:i,2:8), Com_var(1:i,1:6)];
    f_Cap_r_60_new(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Cap_r_60_new(:,1) = mse_cal(Cap_data(119:195,1),f_Cap_r_60_new(1:77,1));
mse_Cap_r_60_new(:,2)= mse_cal(Cap_data(119:195,1),f_Cap_r_60_new(1:77,2));



% BSE CONSUMER DURABLES
f_Con_r_60_new = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Con_data(2:i+1,1);
    X = [Con_data(1:i,2:8), Com_var(1:i,1:6)];
    f_Con_r_60_new(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Con_r_60_new(:,1) = mse_cal(Con_data(119:195,1),f_Con_r_60_new(1:77,1));
mse_Con_r_60_new(:,2)= mse_cal(Con_data(119:195,1),f_Con_r_60_new(1:77,2));



% BSE METAL
f_Metal_r_60_new = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Metal_data(2:i+1,1);
    X = [Metal_data(1:i,2:8), Com_var(1:i,1:6)];
    f_Metal_r_60_new(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Metal_r_60_new(:,1) = mse_cal(Metal_data(119:195,1),f_Metal_r_60_new(1:77,1));
mse_Metal_r_60_new(:,2)= mse_cal(Metal_data(119:195,1),f_Metal_r_60_new(1:77,2));



% BSE OIL & GAS
f_Oil_r_60_new = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Oil_data(2:i+1,1);
    X = [Oil_data(1:i,2:8), Com_var(1:i,1:6)];
    f_Oil_r_60_new(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Oil_r_60_new(:,1) = mse_cal(Oil_data(119:195,1),f_Oil_r_60_new(1:77,1));
mse_Oil_r_60_new(:,2)= mse_cal(Oil_data(119:195,1),f_Oil_r_60_new(1:77,2));



% BSE Power
f_Power_r_60_new = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Power_data(2:i+1,1);
    X = [Power_data(1:i,2:8), Com_var(1:i,1:6)];
    f_Power_r_60_new(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Power_r_60_new(:,1) = mse_cal(Power_data(119:195,1),f_Power_r_60_new(1:77,1));
mse_Power_r_60_new(:,2)= mse_cal(Power_data(119:195,1),f_Power_r_60_new(1:77,2));



% BSE Realty
f_Realty_r_60_new = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Realty_data(2:i+1,1);
    X = [Realty_data(1:i,2:8), Com_var(1:i,1:6)];
    f_Realty_r_60_new(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Realty_r_60_new(:,1) = mse_cal(Realty_data(119:195,1),f_Realty_r_60_new(1:77,1));
mse_Realty_r_60_new(:,2)= mse_cal(Realty_data(119:195,1),f_Realty_r_60_new(1:77,2));



% BSE TECK
f_Teck_r_60_new = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Teck_data(2:i+1,1);
    X = [Teck_data(1:i,2:8), Com_var(1:i,1:6)];
    f_Teck_r_60_new(i-117,:) = bagging(X, Y, block_size, num_samples, true);
end

mse_Teck_r_60_new(:,1) = mse_cal(Teck_data(119:195,1),f_Teck_r_60_new(1:77,1));
mse_Teck_r_60_new(:,2)= mse_cal(Teck_data(119:195,1),f_Teck_r_60_new(1:77,2));


%% 60% training MBB sampling
block_size = 77;

% BSE Auto
f_Auto_r_60_mbb = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Auto_data(2:i+1,1);
    X = [Auto_data(1:i,2:6), Auto_data(1:i,8), Com_var(1:i,1:6)];
    f_Auto_r_60_mbb(i-117,:) = bagging(X, Y, block_size, num_samples, false);
end

mse_Auto_r_60_mbb(:,1) = mse_cal(Auto_data(119:195,1),f_Auto_r_60_mbb(1:77,1));
mse_Auto_r_60_mbb(:,2)= mse_cal(Auto_data(119:195,1),f_Auto_r_60_mbb(1:77,2));



% BSE BANKEX
f_Bank_r_60_mbb = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Bank_data(2:i+1,1);
    X = [Bank_data(1:i,2:6), Bank_data(1:i,8), Com_var(1:i,1:6)];
    f_Bank_r_60_mbb(i-117,:) = bagging(X, Y, block_size, num_samples, false);
end

mse_Bank_r_60_mbb(:,1) = mse_cal(Bank_data(119:195,1),f_Bank_r_60_mbb(1:77,1));
mse_Bank_r_60_mbb(:,2)= mse_cal(Bank_data(119:195,1),f_Bank_r_60_mbb(1:77,2));



% BSE CAPITAL GOODS
f_Cap_r_60_mbb = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Cap_data(2:i+1,1);
    X = [Cap_data(1:i,2:6), Cap_data(1:i,8), Com_var(1:i,1:6)];
    f_Cap_r_60_mbb(i-117,:) = bagging(X, Y, block_size, num_samples, false);
end

mse_Cap_r_60_mbb(:,1) = mse_cal(Cap_data(119:195,1),f_Cap_r_60_mbb(1:77,1));
mse_Cap_r_60_mbb(:,2)= mse_cal(Cap_data(119:195,1),f_Cap_r_60_mbb(1:77,2));



% BSE CONSUMER DURABLES
f_Con_r_60_mbb = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Con_data(2:i+1,1);
    X = [Con_data(1:i,2:6), Con_data(1:i,8), Com_var(1:i,1:6)];
    f_Con_r_60_mbb(i-117,:) = bagging(X, Y, block_size, num_samples, false);
end

mse_Con_r_60_mbb(:,1) = mse_cal(Con_data(119:195,1),f_Con_r_60_mbb(1:77,1));
mse_Con_r_60_mbb(:,2)= mse_cal(Con_data(119:195,1),f_Con_r_60_mbb(1:77,2));



% BSE METAL
f_Metal_r_60_mbb = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Metal_data(2:i+1,1);
    X = [Metal_data(1:i,2:6), Metal_data(1:i,8), Com_var(1:i,1:6)];
    f_Metal_r_60_mbb(i-117,:) = bagging(X, Y, block_size, num_samples, false);
end

mse_Metal_r_60_mbb(:,1) = mse_cal(Metal_data(119:195,1),f_Metal_r_60_mbb(1:77,1));
mse_Metal_r_60_mbb(:,2)= mse_cal(Metal_data(119:195,1),f_Metal_r_60_mbb(1:77,2));



% BSE OIL & GAS
f_Oil_r_60_mbb = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Oil_data(2:i+1,1);
    X = [Oil_data(1:i,2:6), Oil_data(1:i,8), Com_var(1:i,1:6)];
    f_Oil_r_60_mbb(i-117,:) = bagging(X, Y, block_size, num_samples, false);
end

mse_Oil_r_60_mbb(:,1) = mse_cal(Oil_data(119:195,1),f_Oil_r_60_mbb(1:77,1));
mse_Oil_r_60_mbb(:,2)= mse_cal(Oil_data(119:195,1),f_Oil_r_60_mbb(1:77,2));



% BSE Power
f_Power_r_60_mbb = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Power_data(2:i+1,1);
    X = [Power_data(1:i,2:6), Power_data(1:i,8), Com_var(1:i,1:6)];
    f_Power_r_60_mbb(i-117,:) = bagging(X, Y, block_size, num_samples, false);
end

mse_Power_r_60_mbb(:,1) = mse_cal(Power_data(119:195,1),f_Power_r_60_mbb(1:77,1));
mse_Power_r_60_mbb(:,2)= mse_cal(Power_data(119:195,1),f_Power_r_60_mbb(1:77,2));



% BSE Realty
f_Realty_r_60_mbb = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Realty_data(2:i+1,1);
    X = [Realty_data(1:i,2:6), Realty_data(1:i,8), Com_var(1:i,1:6)];
    f_Realty_r_60_mbb(i-117,:) = bagging(X, Y, block_size, num_samples, false);
end

mse_Realty_r_60_mbb(:,1) = mse_cal(Realty_data(119:195,1),f_Realty_r_60_mbb(1:77,1));
mse_Realty_r_60_mbb(:,2)= mse_cal(Realty_data(119:195,1),f_Realty_r_60_mbb(1:77,2));



% BSE TECK
f_Teck_r_60_mbb = zeros(77,2);
clear Y; clear X;
for i=118:194
    Y = Teck_data(2:i+1,1);
    X = [Teck_data(1:i,2:6), Teck_data(1:i,8), Com_var(1:i,1:6)];
    f_Teck_r_60_mbb(i-117,:) = bagging(X, Y, block_size, num_samples, false);
end

mse_Teck_r_60_mbb(:,1) = mse_cal(Teck_data(119:195,1),f_Teck_r_60_mbb(1:77,1));
mse_Teck_r_60_mbb(:,2)= mse_cal(Teck_data(119:195,1),f_Teck_r_60_mbb(1:77,2));

