%%%%Descriptive Statistics%%%%%
t_stat_auto = desc_stat(Auto_data)';
t_stat_bank = desc_stat(Bank_data)';
t_stat_cap = desc_stat(Cap_data)';
t_stat_con = desc_stat(Con_data)';
t_stat_metal = desc_stat(Metal_data)';
t_stat_oil = desc_stat(Oil_data)';
t_stat_realty = desc_stat(Realty_data)';
t_stat_teck = desc_stat(Teck_data)';
t_stat_power = desc_stat(Power_data)';

t_stat_com = desc_stat(Com_var)';

% Correlation Matrix
[cor_Auto,cor_Auto_p] = corrcoef([Auto_data(2:end,1), [Auto_data(1:end-1,2:end), Com_var(1:end-1,:)]]);
[cor_Bank,cor_Bank_p] = corrcoef([Bank_data(2:end,1), [Bank_data(1:end-1,2:end), Com_var(1:end-1,:)]]);
[cor_Cap,cor_Cap_p] = corrcoef([Cap_data(2:end,1), [Cap_data(1:end-1,2:end), Com_var(1:end-1,:)]]);
[cor_Con,cor_Con_p] = corrcoef([Con_data(2:end,1), [Con_data(1:end-1,2:end), Com_var(1:end-1,:)]]);
[cor_Metal,cor_Metal_p] = corrcoef([Metal_data(2:end,1), [Metal_data(1:end-1,2:end), Com_var(1:end-1,:)]]);
[cor_Oil,cor_Oil_p] = corrcoef([Oil_data(2:end,1), [Oil_data(1:end-1,2:end), Com_var(1:end-1,:)]]);
[cor_Power,cor_Power_p] = corrcoef([Power_data(2:end,1), [Power_data(1:end-1,2:end), Com_var(1:end-1,:)]]);
[cor_Realty,cor_Realty_p] = corrcoef([Realty_data(2:end,1), [Realty_data(1:end-1,2:end), Com_var(1:end-1,:)]]);
[cor_Teck,cor_Teck_p] = corrcoef([Teck_data(2:end,1), [Teck_data(1:end-1,2:end), Com_var(1:end-1,:)]]);

% ADF Test
for i=1:8
[~,test_auto_adf(i,1),test_auto_adf(i,2),~] = adftest(Auto_data(:,i),'model','ARD','test','t1','alpha',0.05);
end

for i=1:8
[~,test_bank_adf(i,1),test_bank_adf(i,2),~] = adftest(Bank_data(:,i),'model','ARD','test','t1','alpha',0.05);
end

for i=1:8
[~,test_cap_adf(i,1),test_cap_adf(i,2),~] = adftest(Cap_data(:,i),'model','ARD','test','t1','alpha',0.05);
end

for i=1:8
[~,test_con_adf(i,1),test_con_adf(i,2),~] = adftest(Con_data(:,i),'model','ARD','test','t1','alpha',0.05);
end

for i=1:8
[~,test_metal_adf(i,1),test_metal_adf(i,2),~] = adftest(Metal_data(:,i),'model','ARD','test','t1','alpha',0.05);
end

for i=1:8
[~,test_oil_adf(i,1),test_oil_adf(i,2),~] = adftest(Oil_data(:,i),'model','ARD','test','t1','alpha',0.05);
end

for i=1:8
[~,test_power_adf(i,1),test_power_adf(i,2),~] = adftest(Power_data(:,i),'model','ARD','test','t1','alpha',0.05);
end

for i=1:8
[~,test_realty_adf(i,1),test_realty_adf(i,2),~] = adftest(Realty_data(:,i),'model','ARD','test','t1','alpha',0.05);
end

for i=1:8
[~,test_teck_adf(i,1),test_teck_adf(i,2),~] = adftest(Teck_data(:,i),'model','ARD','test','t1','alpha',0.05);
end

for i=1:8
[~,test_com_adf(i,1),test_com_adf(i,2),~] = adftest(Com_var(:,i),'model','ARD','test','t1','alpha',0.05);
end

% AR(1), ARCH(6), Endogeneity Test.
[t_stat_com(:,8),arch_stat_Com,~,com_resi] = AR_ARCh_Endo_test(0, Com_var(:,1:8), zeros(1,1),zeros(1,1));
[t_stat_auto(:,8),arch_stat_Auto,gamma_Auto,~] = AR_ARCh_Endo_test(1, Auto_data(:,1:8), Com_var(:,1:8), com_resi);
[t_stat_bank(:,8),arch_stat_Bank,gamma_Bank,~] = AR_ARCh_Endo_test(1, Bank_data(:,1:8), Com_var(:,1:8), com_resi);
[t_stat_cap(:,8),arch_stat_Cap,gamma_Cap,~] = AR_ARCh_Endo_test(1, Cap_data(:,1:8), Com_var(:,1:8), com_resi);
[t_stat_con(:,8),arch_stat_Con,gamma_Con,~] = AR_ARCh_Endo_test(1, Con_data(:,1:8), Com_var(:,1:8), com_resi);
[t_stat_oil(:,8),arch_stat_Oil,gamma_Oil,~] = AR_ARCh_Endo_test(1, Oil_data(:,1:8), Com_var(:,1:8), com_resi);
[t_stat_metal(:,8),arch_stat_Metal,gamma_Metal,~] = AR_ARCh_Endo_test(1, Metal_data(:,1:8), Com_var(:,1:8), com_resi);
[t_stat_realty(:,8),arch_stat_Realty,gamma_Realty,~] = AR_ARCh_Endo_test(1, Realty_data(:,1:8), Com_var(:,1:8), com_resi);
[t_stat_power(:,8),arch_stat_Power,gamma_Power,~] = AR_ARCh_Endo_test(1, Power_data(:,1:8), Com_var(:,1:8), com_resi);
[t_stat_teck(:,8),arch_stat_Teck,gamma_Teck,~] = AR_ARCh_Endo_test(1, Teck_data(:,1:8), Com_var(:,1:8), com_resi);

