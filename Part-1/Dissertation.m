%Dissertation

%Setting default directory
cd('Set location of your default directory');

%% Loading Total returns from the data set
file_location = 'Your file location\Data Set';
[~, AutoTR] = log_pop(file_location, 'BSE Data.xlsx', 'Auto', 'F15:F210', true);
[~, BankTR] = log_pop(file_location, 'BSE Data.xlsx', 'Bankex', 'F15:F210', true);
[~, CapTR] = log_pop(file_location, 'BSE Data.xlsx', 'Capital Goods', 'F15:F210', true);
[~, ConTR] = log_pop(file_location, 'BSE Data.xlsx', 'Consumer', 'F15:F210', true);
[~, MetalTR] = log_pop(file_location, 'BSE Data.xlsx', 'Metal', 'F15:F210', true);
[~, OilTR] = log_pop(file_location, 'BSE Data.xlsx', 'Oil', 'F15:F210', true);
[~, PowerTR] = log_pop(file_location, 'BSE Data.xlsx', 'Power', 'F15:F210', true);
[~, RealtyTR] = log_pop(file_location, 'BSE Data.xlsx', 'Realty', 'F15:F210', true);
[~, TeckTR] = log_pop(file_location, 'BSE Data.xlsx', 'Teck', 'F15:F210', true);


[one_month_tbill_date, one_month_tbill] = log_pop(file_location, 'BSE Data.xlsx', 'Macro', 'B12:B206', false);

Converting to monthly equivalent rates
for i=1:size(one_month_tbill_date,1)
    m = month(one_month_tbill_date(i));
    y = year(one_month_tbill_date(i));
    if (m==1||m==3||m==5||m==7||m==8||m==10||m==12)
            one_month_tbill(i) =  one_month_tbill(i) .* 0.31;
    elseif (m==4||m==6||m==9||m==11)
            one_month_tbill(i) =  one_month_tbill(i) .* 0.30;
    else
        if ((mod(y,400)==0)&&(mod(y,100)==0))
                one_month_tbill(i) =  one_month_tbill(i) .* 0.29;
        elseif ((mod(y,4)==0)&&(mod(y,100)~=0))
                one_month_tbill(i) =  one_month_tbill(i) .* 0.29;
        else
                one_month_tbill(i) =  one_month_tbill(i) .* 0.28;
        end
    end
end

one_month_tbill = log((one_month_tbill / 365) + 1);


%% Calculating Equity Risk Premia
Auto_data(:,1) = AutoTR(2:end,1) - AutoTR(1:end-1,1);

Bank_data(:,1) = BankTR(2:end,1) - BankTR(1:end-1,1);

Cap_data(:,1) = CapTR(2:end,1) - CapTR(1:end-1,1);

Con_data(:,1) = ConTR(2:end,1) - ConTR(1:end-1,1);

Metal_data(:,1) = MetalTR(2:end,1) - MetalTR(1:end-1,1);

Oil_data(:,1) = OilTR(2:end,1) - OilTR(1:end-1,1);

Power_data(:,1) = PowerTR(2:end,1) - PowerTR(1:end-1,1);

Realty_data(:,1) = RealtyTR(2:end,1) - RealtyTR(1:end-1,1);

Teck_data(:,1) = TeckTR(2:end,1) - TeckTR(1:end-1,1);


Auto_data(:,1) = Auto_data(:,1) - one_month_tbill(:,1);

Bank_data(:,1) = Bank_data(:,1) - one_month_tbill(:,1);

Cap_data(:,1) = Cap_data(:,1) - one_month_tbill(:,1);

Con_data(:,1) = Con_data(:,1) - one_month_tbill(:,1);

Metal_data(:,1) = Metal_data(:,1) - one_month_tbill(:,1);

Oil_data(:,1) = Oil_data(:,1) - one_month_tbill(:,1);

Power_data(:,1) = Power_data(:,1) - one_month_tbill(:,1);

Realty_data(:,1) = Realty_data(:,1) - one_month_tbill(:,1);

Teck_data(:,1) = Teck_data(:,1) - one_month_tbill(:,1);

[~, sp_500] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'B2:B196', true);


%% Fundamental variables
[~, Auto_close] = log_pop(file_location, 'BSE Data.xlsx', 'Auto', 'B4:B210', false);
[~, Auto_data(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Auto', 'C16:C210', false);
Auto_data(:,2) = log(1 ./ Auto_data(:,2));

[~, Auto_data(:,3)] = log_pop(file_location, 'BSE Data.xlsx', 'Auto', 'D16:D210', false);
Auto_data(:,3) = log(1 ./ Auto_data(:,3));

[~, Auto_data(:,4)] = log_pop(file_location, 'BSE Data.xlsx', 'Auto', 'E16:E210', false);
Auto_data(1:195,4) = Auto_data(1:195,4) ./100;
div = Auto_data(1:195,4) .* Auto_close(1:195,1);
Auto_data(:,4) = log(Auto_data(:,4));

Auto_data(:,5) = log(div ./ Auto_close(13:207,1));

Auto_data(:,6) = Auto_data(:,5) - Auto_data(:,2);

[~, auto_usd] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'C2:C196', true);
Auto_data(:,7) = sp_500 - auto_usd;
clear div;



[~, Bank_close] = log_pop(file_location, 'BSE Data.xlsx', 'Bankex', 'B4:B210', false);
[~, Bank_data(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Bankex', 'C16:C210', false);
Bank_data(:,2) = log(1 ./ Bank_data(:,2));

[~, Bank_data(:,3)] = log_pop(file_location, 'BSE Data.xlsx', 'Bankex', 'D16:D210', false);
Bank_data(:,3) = log(1 ./ Bank_data(:,3));

[~, Bank_data(:,4)] = log_pop(file_location, 'BSE Data.xlsx', 'Bankex', 'E16:E210', false);
Bank_data(:,4) = Bank_data(:,4) ./100;
div = Bank_data(1:195,4) .* Bank_close(1:195,1);
Bank_data(:,4) = log(Bank_data(:,4));

Bank_data(:,5) = log(div ./ Bank_close(13:207,1));

Bank_data(:,6) = Bank_data(:,5) - Bank_data(:,2);


[~, bank_usd] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'D2:D196', true);
Bank_data(:,7) = sp_500 - bank_usd;
clear div;



[~, Cap_close] = log_pop(file_location, 'BSE Data.xlsx', 'Capital Goods', 'B4:B210', false);
[~, Cap_data(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Capital Goods', 'C16:C210', false);
Cap_data(:,2) = log(1 ./ Cap_data(:,2));

[~, Cap_data(:,3)] = log_pop(file_location, 'BSE Data.xlsx', 'Capital Goods', 'D16:D210', false);
Cap_data(:,3) = log(1 ./ Cap_data(:,3));

[~, Cap_data(:,4)] = log_pop(file_location, 'BSE Data.xlsx', 'Capital Goods', 'E16:E210', false);
Cap_data(:,4) = Cap_data(:,4) ./100;
div = Cap_data(1:195,4) .* Cap_close(1:195,1);
Cap_data(:,4) = log(Cap_data(:,4));

Cap_data(:,5) = log(div ./ Cap_close(13:207,1));

Cap_data(:,6) = Cap_data(:,5) - Cap_data(:,2);


[~, cap_usd] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'E2:E196', true);
Cap_data(:,7) = sp_500 - cap_usd;
clear div;



[~, Con_close] = log_pop(file_location, 'BSE Data.xlsx', 'Consumer', 'B4:B210', false);
[~, Con_data(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Consumer', 'C16:C210', false);
Con_data(:,2) = log(1 ./ Con_data(:,2));

[~, Con_data(:,3)] = log_pop(file_location, 'BSE Data.xlsx', 'Consumer', 'D16:D210', false);
Con_data(:,3) = log(1 ./ Con_data(:,3));

[~, Con_data(:,4)] = log_pop(file_location, 'BSE Data.xlsx', 'Consumer', 'E16:E210', false);
Con_data(:,4) = Con_data(:,4) ./100;
div = Con_data(1:195,4) .* Con_close(1:195,1);
Con_data(:,4) = log(Con_data(:,4));

Con_data(:,5) = log(div ./ Con_close(13:207,1));

Con_data(:,6) = Con_data(:,5) - Con_data(:,2);

[~, con_usd] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'F2:F196', true);
Con_data(:,7) = sp_500 - con_usd;
clear div;



[~, Metal_close] = log_pop(file_location, 'BSE Data.xlsx', 'Metal', 'B4:B210', false);
[~, Metal_data(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Metal', 'C16:C210', false);
Metal_data(:,2) = log(1 ./ Metal_data(:,2));

[~, Metal_data(:,3)] = log_pop(file_location, 'BSE Data.xlsx', 'Metal', 'D16:D210', false);
Metal_data(:,3) = log(1 ./ Metal_data(:,3));

[~, Metal_data(:,4)] = log_pop(file_location, 'BSE Data.xlsx', 'Metal', 'E16:E210', false);
Metal_data(:,4) = Metal_data(:,4) ./100;
div = Metal_data(1:195,4) .* Metal_close(1:195,1);
Metal_data(:,4) = log(Metal_data(:,4));

Metal_data(:,5) = log(div ./ Metal_close(13:207,1));

Metal_data(:,6) = Metal_data(:,5) - Metal_data(:,2);

[~, metal_usd] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'H2:H196', true);
Metal_data(:,7) = sp_500 - metal_usd;
clear div;



[~, Oil_close] = log_pop(file_location, 'BSE Data.xlsx', 'Oil', 'B4:B210', false);
[~, Oil_data(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Oil', 'C16:C210', false);
Oil_data(:,2) = log(1 ./ Oil_data(:,2));

[~, Oil_data(:,3)] = log_pop(file_location, 'BSE Data.xlsx', 'Oil', 'D16:D210', false);
Oil_data(:,3) = log(1 ./ Oil_data(:,3));

[~, Oil_data(:,4)] = log_pop(file_location, 'BSE Data.xlsx', 'Oil', 'E16:E210', false);
Oil_data(:,4) = Oil_data(:,4) ./100;
div = Oil_data(1:195,4) .* Oil_close(1:195,1);
Oil_data(:,4) = log(Oil_data(:,4));

Oil_data(:,5) = log(div ./ Oil_close(13:207,1));

Oil_data(:,6) = Oil_data(:,5) - Oil_data(:,2);

[~, oil_usd] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'G2:G196', true);
Oil_data(:,7) = sp_500 - oil_usd;
clear div;



[~, Power_close] = log_pop(file_location, 'BSE Data.xlsx', 'Power', 'B4:B210', false);
[~, Power_data(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Power', 'C16:C210', false);
Power_data(:,2) = log(1 ./ Power_data(:,2));

[~, Power_data(:,3)] = log_pop(file_location, 'BSE Data.xlsx', 'Power', 'D16:D210', false);
Power_data(:,3) = log(1 ./ Power_data(:,3));

[~, Power_data(:,4)] = log_pop(file_location, 'BSE Data.xlsx', 'Power', 'E16:E210', false);
Power_data(:,4) = Power_data(:,4) ./100;
div = Power_data(1:195,4) .* Power_close(1:195,1);
Power_data(:,4) = log(Power_data(:,4));

Power_data(:,5) = log(div ./ Power_close(13:207,1));

Power_data(:,6) = Power_data(:,5) - Power_data(:,2);

[~, power_usd] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'K2:K196', true);
Power_data(:,7) = sp_500 - power_usd;
clear div;



[~, Realty_close] = log_pop(file_location, 'BSE Data.xlsx', 'Realty', 'B4:B210', false);
[~, Realty_data(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Realty', 'C16:C210', false);
Realty_data(:,2) = log(1 ./ Realty_data(:,2));

[~, Realty_data(:,3)] = log_pop(file_location, 'BSE Data.xlsx', 'Realty', 'D16:D210', false);
Realty_data(:,3) = log(1 ./ Realty_data(:,3));

[~, Realty_data(:,4)] = log_pop(file_location, 'BSE Data.xlsx', 'Realty', 'E16:E210', false);
Realty_data(:,4) = Realty_data(:,4) ./100;
div = Realty_data(1:195,4) .* Realty_close(1:195,1);
Realty_data(:,4) = log(Realty_data(:,4));

Realty_data(:,5) = log(div ./ Realty_close(13:207,1));

Realty_data(:,6) = Realty_data(:,5) - Realty_data(:,2);

[~, realty_usd] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'J2:J196', true);
Realty_data(:,7) = sp_500 - realty_usd;
clear div;



[~, Teck_close] = log_pop(file_location, 'BSE Data.xlsx', 'Teck', 'B4:B210', false);
[~, Teck_data(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Teck', 'C16:C210', false);
Teck_data(:,2) = log(1 ./ Teck_data(:,2));

[~, Teck_data(:,3)] = log_pop(file_location, 'BSE Data.xlsx', 'Teck', 'D16:D210', false);
Teck_data(:,3) = log(1 ./ Teck_data(:,3));

[~, Teck_data(:,4)] = log_pop(file_location, 'BSE Data.xlsx', 'Teck', 'E16:E210', false);
Teck_data(:,4) = Teck_data(:,4) ./100;
div = Teck_data(1:195,4) .* Teck_close(1:195,1);
Teck_data(:,4) = log(Teck_data(:,4));

Teck_data(:,5) = log(div ./ Teck_close(13:207,1));

Teck_data(:,6) = Teck_data(:,5) - Teck_data(:,2);

[~, teck_usd] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'I2:I196', true);
Teck_data(:,7) = sp_500 - teck_usd;
clear div;



%% Calculating Stock Market Variance
file_location = 'Your file location\Data Set';
[date, bseAuto] = log_pop(file_location, 'BSE Data.xlsx', 'Auto Daily', 'E105:E4124', true);
[Auto_date, Auto_data(:,8)] = s_var(bseAuto, date);
clear date;

[date, bseBank] = log_pop(file_location, 'BSE Data.xlsx', 'Bankex Daily', 'E105:E4124', true);
[Bank_date, Bank_data(:,8)] = s_var(bseBank, date);
clear date;

[date, bseCap] = log_pop(file_location, 'BSE Data.xlsx', 'Capital Goods Daily', 'E105:E4126', true);
[Cap_date, Cap_data(:,8)] = s_var(bseCap, date);
clear date;

[date, bseCon] = log_pop(file_location, 'BSE Data.xlsx', 'Consumer Daily', 'E105:E4124', true);
[Con_date, Con_data(:,8)] = s_var(bseCon, date);
clear date;

[date, bseMetal] = log_pop(file_location, 'BSE Data.xlsx', 'Metal Daily', 'E105:E4126', true);
[Metal_date, Metal_data(:,8)] = s_var(bseMetal, date);
clear date;

[date, bseOil] = log_pop(file_location, 'BSE Data.xlsx', 'Oil Daily', 'E105:E4124', true);
[Oil_date, Oil_data(:,8)] = s_var(bseOil, date);
clear date;

[date, bsePower] = log_pop(file_location, 'BSE Data.xlsx', 'Power Daily', 'E105:E4126', true);
[Power_date, Power_data(:,8)] = s_var(bsePower, date);
clear date;

[date, bseRealty] = log_pop(file_location, 'BSE Data.xlsx', 'Realty Daily', 'E105:E4126', true);
[Realty_date, Realty_data(:,8)] = s_var(bseRealty, date);
clear date;

[date, bseTeck] = log_pop(file_location, 'BSE Data.xlsx', 'Teck Daily', 'E105:E4126', true);
[Teck_date, Teck_data(:,8)] = s_var(bseTeck, date);
clear date;



file_location = 'Your file location\Data Set';
%% Treasury Bill Rate
[~, Com_var(:,1)] = log_pop(file_location, 'BSE Data.xlsx', 'Macro', 'D12:D206', false);
Com_var(:,1) = Com_var(:,1) ./ 100;

%% Long-Term Yield
[~, Com_var(:,2)] = log_pop(file_location, 'BSE Data.xlsx', 'Macro2', 'H2:H196', false);
Com_var(:,2) = Com_var(:,2) ./ 100;

%% Long-Term Return
[~, long_gov] = log_pop(file_location, 'BSE Data.xlsx', 'Macro2', 'B2:B197', true);
Com_var(:,3) = long_gov(2:end,1) - long_gov(1:end-1,1);

%% Term Spread
Com_var(:,4) = Com_var(:,2) - Com_var(:,1);

%% Default Yield Spread
[~, aaa_yield] = log_pop(file_location, 'BSE Data.xlsx', 'Macro', 'F12:F206', false);
[~, bbb_yield] = log_pop(file_location, 'BSE Data.xlsx', 'Macro', 'G12:G206', false);
aaa_yield = aaa_yield ./ 100;
bbb_yield = bbb_yield ./ 100;
Com_var(:,5) = bbb_yield - aaa_yield;


%% Inflation
[~, Com_var(:,6)] = log_pop(file_location, 'BSE Data.xlsx', 'Macro', 'E12:E206', false);
Com_var(:,6) = Com_var(:,6) ./ 100;

%% FII Equity Flows
[~, fii_net] = log_pop(file_location, 'BSE Data.xlsx', 'Macro2', 'E2:E197', false); %Change it to E202
Com_var(:,7) = (fii_net(2:end,1) - fii_net(1:end-1,1)) ./ abs(fii_net(1:end-1,1));


%% FII Trend Chasing Strategies
[~, sp_500] = log_pop(file_location, 'BSE Data.xlsx', 'SP500', 'E3:E201', true);
[~, bse_500] = log_pop(file_location, 'BSE Data.xlsx', 'USD', 'L2:L196', true);
Com_var(:,8) = sp_500 - bse_500;

%% Historical average of 90% training data and MSE calculation

for i=1:19
    hist_avg_Auto_90(i,1) = mean(Auto_data(1:175+i,1));
end

mse_Auto_hist(:,1) = mse_cal(Auto_data(177:195,1),hist_avg_Auto_90(:,1));


for i=1:19
    hist_avg_Bank_90(i,1) = mean(Bank_data(1:175+i,1));
end

mse_Bank_hist(:,1) = mse_cal(Bank_data(177:195,1),hist_avg_Bank_90(:,1));


for i=1:19
    hist_avg_Cap_90(i,1) = mean(Cap_data(1:175+i,1));
end

mse_Cap_hist(:,1) = mse_cal(Cap_data(177:195,1),hist_avg_Cap_90(:,1));


for i=1:19
    hist_avg_Con_90(i,1) = mean(Con_data(1:175+i,1));
end

mse_Con_hist(:,1) = mse_cal(Con_data(177:195,1),hist_avg_Con_90(:,1));



for i=1:19
    hist_avg_Metal_90(i,1) = mean(Metal_data(1:175+i,1));
end

mse_Metal_hist(:,1) = mse_cal(Metal_data(177:195,1),hist_avg_Metal_90(:,1));



for i=1:19
    hist_avg_Oil_90(i,1) = mean(Oil_data(1:175+i,1));
end

mse_Oil_hist(:,1) = mse_cal(Oil_data(177:195,1),hist_avg_Oil_90(:,1));



for i=1:19
    hist_avg_Power_90(i,1) = mean(Power_data(1:175+i,1));
end

mse_Power_hist(:,1) = mse_cal(Power_data(177:195,1),hist_avg_Power_90(:,1));



for i=1:19
    hist_avg_Realty_90(i,1) = mean(Realty_data(1:175+i,1));
end

mse_Realty_hist(:,1) = mse_cal(Realty_data(177:195,1),hist_avg_Realty_90(:,1));



for i=1:19
    hist_avg_Teck_90(i,1) = mean(Teck_data(1:175+i,1));
end

mse_Teck_hist(:,1) = mse_cal(Teck_data(177:195,1),hist_avg_Teck_90(:,1));




%% Historical average of 60% training data and  MSE calculation
for i=1:77
    hist_avg_Auto_60(i,1) = mean(Auto_data(1:117+i,1));
end

mse_Auto_hist_60(:,1) = mse_cal(Auto_data(119:195,1),hist_avg_Auto_60(:,1));


for i=1:77
    hist_avg_Bank_60(i,1) = mean(Bank_data(1:117+i,1));
end

mse_Bank_hist_60(:,1) = mse_cal(Bank_data(119:195,1),hist_avg_Bank_60(:,1));


for i=1:77
    hist_avg_Cap_60(i,1) = mean(Cap_data(1:117+i,1));
end

mse_Cap_hist_60(:,1) = mse_cal(Cap_data(119:195,1),hist_avg_Cap_60(:,1));



for i=1:77
    hist_avg_Con_60(i,1) = mean(Con_data(1:117+i,1));
end

mse_Con_hist_60(:,1) = mse_cal(Con_data(119:195,1),hist_avg_Con_60(:,1));



for i=1:77
    hist_avg_Metal_60(i,1) = mean(Metal_data(1:117+i,1));
end

mse_Metal_hist_60(:,1) = mse_cal(Metal_data(119:195,1),hist_avg_Metal_60(:,1));



for i=1:77
    hist_avg_Oil_60(i,1) = mean(Oil_data(1:117+i,1));
end

mse_Oil_hist_60(:,1) = mse_cal(Oil_data(119:195,1),hist_avg_Oil_60(:,1));



for i=1:77
    hist_avg_Power_60(i,1) = mean(Power_data(1:117+i,1));
end

mse_Power_hist_60(:,1) = mse_cal(Power_data(119:195,1),hist_avg_Power_60(:,1));



for i=1:77
    hist_avg_Realty_60(i,1) = mean(Realty_data(1:117+i,1));
end

mse_Realty_hist_60(:,1) = mse_cal(Realty_data(119:195,1),hist_avg_Realty_60(:,1));



for i=1:77
    hist_avg_Teck_60(i,1) = mean(Teck_data(1:117+i,1));
end

mse_Teck_hist_60(:,1) = mse_cal(Teck_data(119:195,1),hist_avg_Teck_60(:,1));

