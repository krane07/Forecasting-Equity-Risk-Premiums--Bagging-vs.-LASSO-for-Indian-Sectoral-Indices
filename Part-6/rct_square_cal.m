%%%%  rct = roos  %%%%

% R_OOS square calculation 90%
%BAGGING
rct_Auto_90 = 100 .* (1 - ( mse_Auto_r_90(end,:) ./ mse_Auto_hist(end,:)));
rct_Bank_90 = 100 .* (1 - ( mse_Bank_r_90(end,:) ./ mse_Bank_hist(end,:)));
rct_Cap_90 = 100 .* (1 - ( mse_Cap_r_90(end,:) ./ mse_Cap_hist(end,:)));
rct_Con_90 = 100 .* (1 - ( mse_Con_r_90(end,:) ./ mse_Con_hist(end,:)));
rct_Metal_90 = 100 .* (1 - ( mse_Metal_r_90(end,:) ./ mse_Metal_hist(end,:)));
rct_Oil_90 = 100 .* (1 - ( mse_Oil_r_90(end,:) ./ mse_Oil_hist(end,:)));
rct_Power_90 = 100 .* (1 - ( mse_Power_r_90(end,:) ./ mse_Power_hist(end,:)));
rct_Realty_90 = 100 .* (1 - ( mse_Realty_r_90(end,:) ./ mse_Realty_hist(end,:)));
rct_Teck_90 = 100 .* (1 - ( mse_Teck_r_90(end,:)./ mse_Teck_hist(end,:)));

%LASSO
rct_Auto_lasso_90 = 100 .* (1 - ( mse_lasso_Auto(end,:) ./ mse_Auto_hist(end,:)));
rct_Bank_lasso_90 = 100 .* (1 - ( mse_lasso_Bank(end,:) ./ mse_Bank_hist(end,:)));
rct_Cap_lasso_90 = 100 .* (1 - ( mse_lasso_Cap(end,:) ./ mse_Cap_hist(end,:)));
rct_Con_lasso_90 = 100 .* (1 - ( mse_lasso_Con(end,:)./ mse_Con_hist(end,:)));
rct_Metal_lasso_90 = 100 .* (1 - ( mse_lasso_Metal(end,:) ./ mse_Metal_hist(end,:)));
rct_Oil_lasso_90 = 100 .* (1 - ( mse_lasso_Oil(end,:) ./ mse_Oil_hist(end,:)));
rct_Power_lasso_90 = 100 .* (1 - ( mse_lasso_Power(end,:) ./ mse_Power_hist(end,:)));
rct_Realty_lasso_90 = 100 .* (1 - ( mse_lasso_Realty(end,:) ./ mse_Realty_hist(end,:)));
rct_Teck_lasso_90 = 100 .* (1 - ( mse_lasso_Teck(end,:)./ mse_Teck_hist(end,:)));



% R_OOS square t stats 90% data 
%LASSO
ft_Auto_lasso_90 = ((Auto_data(177:end,1) - hist_avg_Auto_90(:,1)) ).^2 - (((Auto_data(177:end,1) - Auto_lasso_fc(:,1)).^2 - ( hist_avg_Auto_90(:,1) - Auto_lasso_fc(:,1)).^2));

ft_Bank_lasso_90 = ((Bank_data(177:end,1) - hist_avg_Bank_90(:,1)) ).^2 - (((Bank_data(177:end,1) - Bank_lasso_fc(:,1)).^2 - ( hist_avg_Bank_90(:,1) - Bank_lasso_fc(:,1)).^2));

ft_Cap_lasso_90 = ((Cap_data(177:end,1) - hist_avg_Cap_90(:,1)) ).^2 - (((Cap_data(177:end,1) - Cap_lasso_fc(:,1)).^2 - ( hist_avg_Cap_90(:,1) - Cap_lasso_fc(:,1)).^2));

ft_Con_lasso_90 = ((Con_data(177:end,1) - hist_avg_Con_90(:,1)) ).^2 - (((Con_data(177:end,1) - Con_lasso_fc(:,1)).^2 - ( hist_avg_Con_90(:,1) - Con_lasso_fc(:,1)).^2));

ft_Metal_lasso_90 = ((Metal_data(177:end,1) - hist_avg_Metal_90(:,1)) ).^2 - (((Metal_data(177:end,1) - Metal_lasso_fc(:,1)).^2 - ( hist_avg_Metal_90(:,1) - Metal_lasso_fc(:,1)).^2));

ft_Oil_lasso_90 = ((Oil_data(177:end,1) - hist_avg_Oil_90(:,1)) ).^2 - (((Oil_data(177:end,1) - Oil_lasso_fc(:,1)).^2 - ( hist_avg_Oil_90(:,1) - Oil_lasso_fc(:,1)).^2));

ft_Power_lasso_90 = ((Power_data(177:end,1) - hist_avg_Power_90(:,1)) ).^2 - (((Power_data(177:end,1) - Power_lasso_fc(:,1)).^2 - ( hist_avg_Power_90(:,1) - Power_lasso_fc(:,1)).^2));

ft_Realty_lasso_90 = ((Realty_data(177:end,1) - hist_avg_Realty_90(:,1)) ).^2 - (((Realty_data(177:end,1) - Realty_lasso_fc(:,1)).^2 - ( hist_avg_Realty_90(:,1) - Realty_lasso_fc(:,1)).^2));

ft_Teck_lasso_90 = ((Teck_data(177:end,1) - hist_avg_Teck_90(:,1)) ).^2 - (((Teck_data(177:end,1) - Teck_lasso_fc(:,1)).^2 - ( hist_avg_Teck_90(:,1) - Teck_lasso_fc(:,1)).^2));


%BAGGING
ft_Auto_bag_90 = ((Auto_data(177:end,1) - hist_avg_Auto_90(:,1)) ).^2 - (((Auto_data(177:end,1) - f_Auto_r_90(:,1)).^2 - ( hist_avg_Auto_90(:,1) - f_Auto_r_90(:,1)).^2));

ft_Bank_bag_90 = ((Bank_data(177:end,1) - hist_avg_Bank_90(:,1)) ).^2 - (((Bank_data(177:end,1) - f_Bank_r_90(:,1)).^2 - ( hist_avg_Bank_90(:,1) - f_Bank_r_90(:,1)).^2));

ft_Cap_bag_90 = ((Cap_data(177:end,1) - hist_avg_Cap_90(:,1)) ).^2 - (((Cap_data(177:end,1) - f_Cap_r_90(:,1)).^2 - ( hist_avg_Cap_90(:,1) - f_Cap_r_90(:,1)).^2));

ft_Con_bag_90 = ((Con_data(177:end,1) - hist_avg_Con_90(:,1)) ).^2 - (((Con_data(177:end,1) - f_Con_r_90(:,1)).^2 - ( hist_avg_Con_90(:,1) - f_Con_r_90(:,1)).^2));

ft_Metal_bag_90 = ((Metal_data(177:end,1) - hist_avg_Metal_90(:,1)) ).^2 - (((Metal_data(177:end,1) - f_Metal_r_90(:,1)).^2 - ( hist_avg_Metal_90(:,1) - f_Metal_r_90(:,1)).^2));

ft_Oil_bag_90 = ((Oil_data(177:end,1) - hist_avg_Oil_90(:,1)) ).^2 - (((Oil_data(177:end,1) - f_Oil_r_90(:,1)).^2 - ( hist_avg_Oil_90(:,1) - f_Oil_r_90(:,1)).^2));

ft_Power_bag_90 = ((Power_data(177:end,1) - hist_avg_Power_90(:,1)) ).^2 - (((Power_data(177:end,1) - f_Power_r_90(:,1)).^2 - ( hist_avg_Power_90(:,1) - f_Power_r_90(:,1)).^2));

ft_Realty_bag_90 = ((Realty_data(177:end,1) - hist_avg_Realty_90(:,1)) ).^2 - (((Realty_data(177:end,1) - f_Realty_r_90(:,1)).^2 - ( hist_avg_Realty_90(:,1) - f_Realty_r_90(:,1)).^2));

ft_Teck_bag_90 = ((Teck_data(177:end,1) - hist_avg_Teck_90(:,1)) ).^2 - (((Teck_data(177:end,1) - f_Teck_r_90(:,1)).^2 - ( hist_avg_Teck_90(:,1) - f_Teck_r_90(:,1)).^2));

%t-stat of r_oos_square of LASSO with MBB 90%
[~,~,t_stat_Auto_lasso_90,~] = cust_fitlm(ft_Auto_lasso_90, ones(19,1), false);
[~,~,t_stat_Bank_lasso_90,~] = cust_fitlm(ft_Bank_lasso_90,ones(19,1), false);
[~,~,t_stat_Cap_lasso_90,~] = cust_fitlm(ft_Cap_lasso_90,ones(19,1), false);
[~,~,t_stat_Con_lasso_90,~] = cust_fitlm(ft_Con_lasso_90,ones(19,1), false);
[~,~,t_stat_Metal_lasso_90,~] = cust_fitlm(ft_Metal_lasso_90,ones(19,1), false);
[~,~,t_stat_Oil_lasso_90,~] = cust_fitlm(ft_Oil_lasso_90,ones(19,1), false);
[~,~,t_stat_Power_lasso_90,~] = cust_fitlm(ft_Power_lasso_90,ones(19,1), false);
[~,~,t_stat_Realty_lasso_90,~] = cust_fitlm(ft_Realty_lasso_90,ones(19,1), false);
[~,~,t_stat_Teck_lasso_90,~] = cust_fitlm(ft_Teck_lasso_90,ones(19,1), false);

%t-stat of r_oos_square of Bagging 90%
[~,~,t_stat_Auto_bag_90,~] = cust_fitlm(ft_Auto_bag_90,ones(19,1), false);
[~,~,t_stat_Bank_bag_90,~] = cust_fitlm(ft_Bank_bag_90,ones(19,1), false);
[~,~,t_stat_Cap_bag_90,~] = cust_fitlm(ft_Cap_bag_90,ones(19,1), false);
[~,~,t_stat_Con_bag_90,~] = cust_fitlm(ft_Con_bag_90,ones(19,1), false);
[~,~,t_stat_Metal_bag_90,~] = cust_fitlm(ft_Metal_bag_90,ones(19,1), false);
[~,~,t_stat_Oil_bag_90,~] = cust_fitlm(ft_Oil_bag_90,ones(19,1), false);
[~,~,t_stat_Power_bag_90,~] = cust_fitlm(ft_Power_bag_90,ones(19,1), false);
[~,~,t_stat_Realty_bag_90,~] = cust_fitlm(ft_Realty_bag_90,ones(19,1), false);
[~,~,t_stat_Teck_bag_90,~] = cust_fitlm(ft_Teck_bag_90,ones(19,1), false);

t_crit_rct_90 = tinv(0.995,19);

% R_OOS square calculation 60%
%BAGGING
rct_Auto_60 = 100 .* (1 - ( mse_Auto_r_60(end,:) ./ mse_Auto_hist_60(end,:)));
rct_Bank_60 = 100 .* (1 - ( mse_Bank_r_60(end,:) ./ mse_Bank_hist_60(end,:)));
rct_Cap_60 = 100 .* (1 - ( mse_Cap_r_60(end,:) ./ mse_Cap_hist_60(end,:)));
rct_Con_60 = 100 .* (1 - ( mse_Con_r_60(end,:) ./ mse_Con_hist_60(end,:)));
rct_Metal_60 = 100 .* (1 - ( mse_Metal_r_60(end,:)./ mse_Metal_hist_60(end,:)));
rct_Oil_60 = 100 .* (1 - ( mse_Oil_r_60(end,:) ./ mse_Oil_hist_60(end,:)));
rct_Power_60 = 100 .* (1 - ( mse_Power_r_60(end,:) ./ mse_Power_hist_60(end,:)));
rct_Realty_60 = 100 .* (1 - ( mse_Realty_r_60(end,:) ./ mse_Realty_hist_60(end,:)));
rct_Teck_60 = 100 .* (1 - ( mse_Teck_r_60(end,:) ./ mse_Teck_hist_60(end,:)));
%LASSO
rct_Auto_lasso_60 = 100 .* (1 - ( mse_lasso_Auto_60(end,:) ./ mse_Auto_hist_60(end,:)));
rct_Bank_lasso_60 = 100 .* (1 - ( mse_lasso_Bank_60(end,:)./ mse_Bank_hist_60(end,:)));
rct_Cap_lasso_60 = 100 .* (1 - ( mse_lasso_Cap_60(end,:) ./ mse_Cap_hist_60(end,:)));
rct_Con_lasso_60 = 100 .* (1 - ( mse_lasso_Con_60(end,:) ./ mse_Con_hist_60(end,:)));
rct_Metal_lasso_60 = 100 .* (1 - ( mse_lasso_Metal_60(end,:) ./ mse_Metal_hist_60(end,:)));
rct_Oil_lasso_60 = 100 .* (1 - ( mse_lasso_Oil_60(end,:) ./ mse_Oil_hist_60(end,:)));
rct_Power_lasso_60 = 100 .* (1 - (  mse_lasso_Power_60(end,:) ./ mse_Power_hist_60(end,:)));
rct_Realty_lasso_60 = 100 .* (1 - (  mse_lasso_Realty_60(end,:) ./ mse_Realty_hist_60(end,:)));
rct_Teck_lasso_60 = 100 .* (1 - (  mse_lasso_Teck_60(end,:) ./ mse_Teck_hist_60(end,:)));


% R_OOS square t stats 60% data 
%LASSO
ft_Auto_lasso_60 = ((Auto_data(119:end,1) - hist_avg_Auto_60(:,1)) ).^2 - (((Auto_data(119:end,1) - Auto_lasso_fc_60(:,1)).^2 - ( hist_avg_Auto_60(:,1) - Auto_lasso_fc_60(:,1)).^2));

ft_Bank_lasso_60 = ((Bank_data(119:end,1) - hist_avg_Bank_60(:,1)) ).^2 - (((Bank_data(119:end,1) - Bank_lasso_fc_60(:,1)).^2 - ( hist_avg_Bank_60(:,1) - Bank_lasso_fc_60(:,1)).^2));

ft_Cap_lasso_60 = ((Cap_data(119:end,1) - hist_avg_Cap_60(:,1)) ).^2 - (((Cap_data(119:end,1) - Cap_lasso_fc_60(:,1)).^2 - ( hist_avg_Cap_60(:,1) - Cap_lasso_fc_60(:,1)).^2));

ft_Con_lasso_60 = ((Con_data(119:end,1) - hist_avg_Con_60(:,1)) ).^2 - (((Con_data(119:end,1) - Con_lasso_fc_60(:,1)).^2 - ( hist_avg_Con_60(:,1) - Con_lasso_fc_60(:,1)).^2));

ft_Metal_lasso_60 = ((Metal_data(119:end,1) - hist_avg_Metal_60(:,1)) ).^2 - (((Metal_data(119:end,1) - Metal_lasso_fc_60(:,1)).^2 - ( hist_avg_Metal_60(:,1) - Metal_lasso_fc_60(:,1)).^2));

ft_Oil_lasso_60 = ((Oil_data(119:end,1) - hist_avg_Oil_60(:,1)) ).^2 - (((Oil_data(119:end,1) - Oil_lasso_fc_60(:,1)).^2 - ( hist_avg_Oil_60(:,1) - Oil_lasso_fc_60(:,1)).^2));

ft_Power_lasso_60 = ((Power_data(119:end,1) - hist_avg_Power_60(:,1)) ).^2 - (((Power_data(119:end,1) - Power_lasso_fc_60(:,1)).^2 - ( hist_avg_Power_60(:,1) - Power_lasso_fc_60(:,1)).^2));

ft_Realty_lasso_60 = ((Realty_data(119:end,1) - hist_avg_Realty_60(:,1)) ).^2 - (((Realty_data(119:end,1) - Realty_lasso_fc_60(:,1)).^2 - ( hist_avg_Realty_60(:,1) - Realty_lasso_fc_60(:,1)).^2));

ft_Teck_lasso_60 = ((Teck_data(119:end,1) - hist_avg_Teck_60(:,1)) ).^2 - (((Teck_data(119:end,1) - Teck_lasso_fc_60(:,1)).^2 - ( hist_avg_Teck_60(:,1) - Teck_lasso_fc_60(:,1)).^2));


%BAGGING
ft_Auto_bag_60 = ((Auto_data(119:end,1) - hist_avg_Auto_60(:,1)) ).^2 - (((Auto_data(119:end,1) - f_Auto_r_60(:,1)).^2 - ( hist_avg_Auto_60(:,1) - f_Auto_r_60(:,1)).^2));

ft_Bank_bag_60 = ((Bank_data(119:end,1) - hist_avg_Bank_60(:,1)) ).^2 - (((Bank_data(119:end,1) - f_Bank_r_60(:,1)).^2 - ( hist_avg_Bank_60(:,1) - f_Bank_r_60(:,1)).^2));

ft_Cap_bag_60 = ((Cap_data(119:end,1) - hist_avg_Cap_60(:,1)) ).^2 - (((Cap_data(119:end,1) - f_Cap_r_60(:,1)).^2 - ( hist_avg_Cap_60(:,1) - f_Cap_r_60(:,1)).^2));

ft_Con_bag_60 = ((Con_data(119:end,1) - hist_avg_Con_60(:,1)) ).^2 - (((Con_data(119:end,1) - f_Con_r_60(:,1)).^2 - ( hist_avg_Con_60(:,1) - f_Con_r_60(:,1)).^2));

ft_Metal_bag_60 = ((Metal_data(119:end,1) - hist_avg_Metal_60(:,1)) ).^2 - (((Metal_data(119:end,1) - f_Metal_r_60(:,1)).^2 - ( hist_avg_Metal_60(:,1) - f_Metal_r_60(:,1)).^2));

ft_Oil_bag_60 = ((Oil_data(119:end,1) - hist_avg_Oil_60(:,1)) ).^2 - (((Oil_data(119:end,1) - f_Oil_r_60(:,1)).^2 - ( hist_avg_Oil_60(:,1) - f_Oil_r_60(:,1)).^2));

ft_Power_bag_60 = ((Power_data(119:end,1) - hist_avg_Power_60(:,1)) ).^2 - (((Power_data(119:end,1) - f_Power_r_60(:,1)).^2 - ( hist_avg_Power_60(:,1) - f_Power_r_60(:,1)).^2));

ft_Realty_bag_60 = ((Realty_data(119:end,1) - hist_avg_Realty_60(:,1)) ).^2 - (((Realty_data(119:end,1) - f_Realty_r_60(:,1)).^2 - ( hist_avg_Realty_60(:,1) - f_Realty_r_60(:,1)).^2));

ft_Teck_bag_60 = ((Teck_data(119:end,1) - hist_avg_Teck_60(:,1)) ).^2 - (((Teck_data(119:end,1) - f_Teck_r_60(:,1)).^2 - ( hist_avg_Teck_60(:,1) - f_Teck_r_60(:,1)).^2));

%t-stat of r_oos_square of LASSO with MBB 60%
[~,~,t_stat_Auto_lasso_60,~] = cust_fitlm(ft_Auto_lasso_60, ones(77,1), false);
[~,~,t_stat_Bank_lasso_60,~] = cust_fitlm(ft_Bank_lasso_60,ones(77,1), false);
[~,~,t_stat_Cap_lasso_60,~] = cust_fitlm(ft_Cap_lasso_60,ones(77,1), false);
[~,~,t_stat_Con_lasso_60,~] = cust_fitlm(ft_Con_lasso_60,ones(77,1), false);
[~,~,t_stat_Metal_lasso_60,~] = cust_fitlm(ft_Metal_lasso_60,ones(77,1), false);
[~,~,t_stat_Oil_lasso_60,~] = cust_fitlm(ft_Oil_lasso_60,ones(77,1), false);
[~,~,t_stat_Power_lasso_60,~] = cust_fitlm(ft_Power_lasso_60,ones(77,1), false);
[~,~,t_stat_Realty_lasso_60,~] = cust_fitlm(ft_Realty_lasso_60,ones(77,1), false);
[~,~,t_stat_Teck_lasso_60,~] = cust_fitlm(ft_Teck_lasso_60,ones(77,1), false);

%t-stat of r_oos_square of Bagging with MBB 60%
[~,~,t_stat_Auto_bag_60,~] = cust_fitlm(ft_Auto_bag_60,ones(77,1), false);
[~,~,t_stat_Bank_bag_60,~] = cust_fitlm(ft_Bank_bag_60,ones(77,1), false);
[~,~,t_stat_Cap_bag_60,~] = cust_fitlm(ft_Cap_bag_60,ones(77,1), false);
[~,~,t_stat_Con_bag_60,~] = cust_fitlm(ft_Con_bag_60,ones(77,1), false);
[~,~,t_stat_Metal_bag_60,~] = cust_fitlm(ft_Metal_bag_60,ones(77,1), false);
[~,~,t_stat_Oil_bag_60,~] = cust_fitlm(ft_Oil_bag_60,ones(77,1), false);
[~,~,t_stat_Power_bag_60,~] = cust_fitlm(ft_Power_bag_60,ones(77,1), false);
[~,~,t_stat_Realty_bag_60,~] = cust_fitlm(ft_Realty_bag_60,ones(77,1), false);
[~,~,t_stat_Teck_bag_60,~] = cust_fitlm(ft_Teck_bag_60,ones(77,1), false);

t_crit_rct_60 = tinv(0.995,77);

%%% R_OOS square of newly added predictors (SPI)
%BAGGING
rct_Auto_60_new = 100 .* (1 - ( mse_Auto_r_60_new(end,:) ./ mse_Auto_hist_60(end,:)));
rct_Bank_60_new = 100 .* (1 - ( mse_Bank_r_60_new(end,:) ./ mse_Bank_hist_60(end,:)));
rct_Cap_60_new = 100 .* (1 - ( mse_Cap_r_60_new(end,:) ./ mse_Cap_hist_60(end,:)));
rct_Con_60_new = 100 .* (1 - ( mse_Con_r_60_new(end,:) ./ mse_Con_hist_60(end,:)));
rct_Metal_60_new = 100 .* (1 - ( mse_Metal_r_60_new(end,:)./ mse_Metal_hist_60(end,:)));
rct_Oil_60_new = 100 .* (1 - ( mse_Oil_r_60_new(end,:) ./ mse_Oil_hist_60(end,:)));
rct_Power_60_new = 100 .* (1 - ( mse_Power_r_60_new(end,:) ./ mse_Power_hist_60(end,:)));
rct_Realty_60_new = 100 .* (1 - ( mse_Realty_r_60_new(end,:) ./ mse_Realty_hist_60(end,:)));
rct_Teck_60_new = 100 .* (1 - ( mse_Teck_r_60_new(end,:) ./ mse_Teck_hist_60(end,:)));

%LASSO
rct_Auto_lasso_60_new = 100 .* (1 - ( mse_lasso_Auto_60_new(end,:) ./ mse_Auto_hist_60(end,:)));
rct_Bank_lasso_60_new = 100 .* (1 - ( mse_lasso_Bank_60_new(end,:)./ mse_Bank_hist_60(end,:)));
rct_Cap_lasso_60_new = 100 .* (1 - ( mse_lasso_Cap_60_new(end,:) ./ mse_Cap_hist_60(end,:)));
rct_Con_lasso_60_new = 100 .* (1 - ( mse_lasso_Con_60_new(end,:) ./ mse_Con_hist_60(end,:)));
rct_Metal_lasso_60_new = 100 .* (1 - ( mse_lasso_Metal_60_new(end,:) ./ mse_Metal_hist_60(end,:)));
rct_Oil_lasso_60_new = 100 .* (1 - ( mse_lasso_Oil_60_new(end,:) ./ mse_Oil_hist_60(end,:)));
rct_Power_lasso_60_new = 100 .* (1 - (  mse_lasso_Power_60_new(end,:) ./ mse_Power_hist_60(end,:)));
rct_Realty_lasso_60_new = 100 .* (1 - (  mse_lasso_Realty_60_new(end,:) ./ mse_Realty_hist_60(end,:)));
rct_Teck_lasso_60_new = 100 .* (1 - (  mse_lasso_Teck_60_new(end,:) ./ mse_Teck_hist_60(end,:)));


% ROOS square t stats 60% data new SPI
%LASSO
ft_Auto_lasso_60_new = ((Auto_data(119:end,1) - hist_avg_Auto_60(:,1)) ).^2 - (((Auto_data(119:end,1) - Auto_lasso_fc_60_new(:,1)).^2 - ( hist_avg_Auto_60(:,1) - Auto_lasso_fc_60_new(:,1)).^2));

ft_Bank_lasso_60_new = ((Bank_data(119:end,1) - hist_avg_Bank_60(:,1)) ).^2 - (((Bank_data(119:end,1) - Bank_lasso_fc_60_new(:,1)).^2 - ( hist_avg_Bank_60(:,1) - Bank_lasso_fc_60_new(:,1)).^2));

ft_Cap_lasso_60_new = ((Cap_data(119:end,1) - hist_avg_Cap_60(:,1)) ).^2 - (((Cap_data(119:end,1) - Cap_lasso_fc_60_new(:,1)).^2 - ( hist_avg_Cap_60(:,1) - Cap_lasso_fc_60_new(:,1)).^2));

ft_Con_lasso_60_new = ((Con_data(119:end,1) - hist_avg_Con_60(:,1)) ).^2 - (((Con_data(119:end,1) - Con_lasso_fc_60_new(:,1)).^2 - ( hist_avg_Con_60(:,1) - Con_lasso_fc_60_new(:,1)).^2));

ft_Metal_lasso_60_new = ((Metal_data(119:end,1) - hist_avg_Metal_60(:,1)) ).^2 - (((Metal_data(119:end,1) - Metal_lasso_fc_60_new(:,1)).^2 - ( hist_avg_Metal_60(:,1) - Metal_lasso_fc_60_new(:,1)).^2));

ft_Oil_lasso_60_new = ((Oil_data(119:end,1) - hist_avg_Oil_60(:,1)) ).^2 - (((Oil_data(119:end,1) - Oil_lasso_fc_60_new(:,1)).^2 - ( hist_avg_Oil_60(:,1) - Oil_lasso_fc_60_new(:,1)).^2));

ft_Power_lasso_60_new = ((Power_data(119:end,1) - hist_avg_Power_60(:,1)) ).^2 - (((Power_data(119:end,1) - Power_lasso_fc_60_new(:,1)).^2 - ( hist_avg_Power_60(:,1) - Power_lasso_fc_60_new(:,1)).^2));

ft_Realty_lasso_60_new = ((Realty_data(119:end,1) - hist_avg_Realty_60(:,1)) ).^2 - (((Realty_data(119:end,1) - Realty_lasso_fc_60_new(:,1)).^2 - ( hist_avg_Realty_60(:,1) - Realty_lasso_fc_60_new(:,1)).^2));

ft_Teck_lasso_60_new = ((Teck_data(119:end,1) - hist_avg_Teck_60(:,1)) ).^2 - (((Teck_data(119:end,1) - Teck_lasso_fc_60_new(:,1)).^2 - ( hist_avg_Teck_60(:,1) - Teck_lasso_fc_60_new(:,1)).^2));

%BAGGING
ft_Auto_bag_60_new = ((Auto_data(119:end,1) - hist_avg_Auto_60(:,1)) ).^2 - (((Auto_data(119:end,1) - f_Auto_r_60_new(:,1)).^2 - ( hist_avg_Auto_60(:,1) - f_Auto_r_60_new(:,1)).^2));

ft_Bank_bag_60_new = ((Bank_data(119:end,1) - hist_avg_Bank_60(:,1)) ).^2 - (((Bank_data(119:end,1) - f_Bank_r_60_new(:,1)).^2 - ( hist_avg_Bank_60(:,1) - f_Bank_r_60_new(:,1)).^2));

ft_Cap_bag_60_new = ((Cap_data(119:end,1) - hist_avg_Cap_60(:,1)) ).^2 - (((Cap_data(119:end,1) - f_Cap_r_60_new(:,1)).^2 - ( hist_avg_Cap_60(:,1) - f_Cap_r_60_new(:,1)).^2));

ft_Con_bag_60_new = ((Con_data(119:end,1) - hist_avg_Con_60(:,1)) ).^2 - (((Con_data(119:end,1) - f_Con_r_60_new(:,1)).^2 - ( hist_avg_Con_60(:,1) - f_Con_r_60_new(:,1)).^2));

ft_Metal_bag_60_new = ((Metal_data(119:end,1) - hist_avg_Metal_60(:,1)) ).^2 - (((Metal_data(119:end,1) - f_Metal_r_60_new(:,1)).^2 - ( hist_avg_Metal_60(:,1) - f_Metal_r_60_new(:,1)).^2));

ft_Oil_bag_60_new = ((Oil_data(119:end,1) - hist_avg_Oil_60(:,1)) ).^2 - (((Oil_data(119:end,1) - f_Oil_r_60_new(:,1)).^2 - ( hist_avg_Oil_60(:,1) - f_Oil_r_60_new(:,1)).^2));

ft_Power_bag_60_new = ((Power_data(119:end,1) - hist_avg_Power_60(:,1)) ).^2 - (((Power_data(119:end,1) - f_Power_r_60_new(:,1)).^2 - ( hist_avg_Power_60(:,1) - f_Power_r_60_new(:,1)).^2));

ft_Realty_bag_60_new = ((Realty_data(119:end,1) - hist_avg_Realty_60(:,1)) ).^2 - (((Realty_data(119:end,1) - f_Realty_r_60_new(:,1)).^2 - ( hist_avg_Realty_60(:,1) - f_Realty_r_60_new(:,1)).^2));

ft_Teck_bag_60_new = ((Teck_data(119:end,1) - hist_avg_Teck_60(:,1)) ).^2 - (((Teck_data(119:end,1) - f_Teck_r_60_new(:,1)).^2 - ( hist_avg_Teck_60(:,1) - f_Teck_r_60_new(:,1)).^2));

%t-stat of r_oos_square of LASSO with SPI
[~,~,t_stat_Auto_lasso_60_new,~] = cust_fitlm(ft_Auto_lasso_60_new, ones(77,1), false);
[~,~,t_stat_Bank_lasso_60_new,~] = cust_fitlm(ft_Bank_lasso_60_new,ones(77,1), false);
[~,~,t_stat_Cap_lasso_60_new,~] = cust_fitlm(ft_Cap_lasso_60_new,ones(77,1), false);
[~,~,t_stat_Con_lasso_60_new,~] = cust_fitlm(ft_Con_lasso_60_new,ones(77,1), false);
[~,~,t_stat_Metal_lasso_60_new,~] = cust_fitlm(ft_Metal_lasso_60_new,ones(77,1), false);
[~,~,t_stat_Oil_lasso_60_new,~] = cust_fitlm(ft_Oil_lasso_60_new,ones(77,1), false);
[~,~,t_stat_Power_lasso_60_new,~] = cust_fitlm(ft_Power_lasso_60_new,ones(77,1), false);
[~,~,t_stat_Realty_lasso_60_new,~] = cust_fitlm(ft_Realty_lasso_60_new,ones(77,1), false);
[~,~,t_stat_Teck_lasso_60_new,~] = cust_fitlm(ft_Teck_lasso_60_new,ones(77,1), false);

%t-stat of r_oos_square of Bagging with SPI
[~,~,t_stat_Auto_bag_60_new,~] = cust_fitlm(ft_Auto_bag_60_new,ones(77,1), false);
[~,~,t_stat_Bank_bag_60_new,~] = cust_fitlm(ft_Bank_bag_60_new,ones(77,1), false);
[~,~,t_stat_Cap_bag_60_new,~] = cust_fitlm(ft_Cap_bag_60_new,ones(77,1), false);
[~,~,t_stat_Con_bag_60_new,~] = cust_fitlm(ft_Con_bag_60_new,ones(77,1), false);
[~,~,t_stat_Metal_bag_60_new,~] = cust_fitlm(ft_Metal_bag_60_new,ones(77,1), false);
[~,~,t_stat_Oil_bag_60_new,~] = cust_fitlm(ft_Oil_bag_60_new,ones(77,1), false);
[~,~,t_stat_Power_bag_60_new,~] = cust_fitlm(ft_Power_bag_60_new,ones(77,1), false);
[~,~,t_stat_Realty_bag_60_new,~] = cust_fitlm(ft_Realty_bag_60_new,ones(77,1), false);
[~,~,t_stat_Teck_bag_60_new,~] = cust_fitlm(ft_Teck_bag_60_new,ones(77,1), false);

%%% R_OOS square of MBB sampling
%BAGGING
rct_Auto_60_mbb = 100 .* (1 - ( mse_Auto_r_60_mbb(end,:) ./ mse_Auto_hist_60(end,:)));
rct_Bank_60_mbb = 100 .* (1 - ( mse_Bank_r_60_mbb(end,:) ./ mse_Bank_hist_60(end,:)));
rct_Cap_60_mbb = 100 .* (1 - ( mse_Cap_r_60_mbb(end,:) ./ mse_Cap_hist_60(end,:)));
rct_Con_60_mbb = 100 .* (1 - ( mse_Con_r_60_mbb(end,:) ./ mse_Con_hist_60(end,:)));
rct_Metal_60_mbb = 100 .* (1 - ( mse_Metal_r_60_mbb(end,:)./ mse_Metal_hist_60(end,:)));
rct_Oil_60_mbb = 100 .* (1 - ( mse_Oil_r_60_mbb(end,:) ./ mse_Oil_hist_60(end,:)));
rct_Power_60_mbb = 100 .* (1 - ( mse_Power_r_60_mbb(end,:) ./ mse_Power_hist_60(end,:)));
rct_Realty_60_mbb = 100 .* (1 - ( mse_Realty_r_60_mbb(end,:) ./ mse_Realty_hist_60(end,:)));
rct_Teck_60_mbb = 100 .* (1 - ( mse_Teck_r_60_mbb(end,:) ./ mse_Teck_hist_60(end,:)));



% RCT square t stats 60% data (MBB)
%BAGGING
ft_Auto_bag_60_mbb = ((Auto_data(119:end,1) - hist_avg_Auto_60(:,1)) ).^2 - (((Auto_data(119:end,1) - f_Auto_r_60_mbb(:,1)).^2 - ( hist_avg_Auto_60(:,1) - f_Auto_r_60_mbb(:,1)).^2));

ft_Bank_bag_60_mbb = ((Bank_data(119:end,1) - hist_avg_Bank_60(:,1)) ).^2 - (((Bank_data(119:end,1) - f_Bank_r_60_mbb(:,1)).^2 - ( hist_avg_Bank_60(:,1) - f_Bank_r_60_mbb(:,1)).^2));

ft_Cap_bag_60_mbb = ((Cap_data(119:end,1) - hist_avg_Cap_60(:,1)) ).^2 - (((Cap_data(119:end,1) - f_Cap_r_60_mbb(:,1)).^2 - ( hist_avg_Cap_60(:,1) - f_Cap_r_60_mbb(:,1)).^2));

ft_Con_bag_60_mbb = ((Con_data(119:end,1) - hist_avg_Con_60(:,1)) ).^2 - (((Con_data(119:end,1) - f_Con_r_60_mbb(:,1)).^2 - ( hist_avg_Con_60(:,1) - f_Con_r_60_mbb(:,1)).^2));

ft_Metal_bag_60_mbb = ((Metal_data(119:end,1) - hist_avg_Metal_60(:,1)) ).^2 - (((Metal_data(119:end,1) - f_Metal_r_60_mbb(:,1)).^2 - ( hist_avg_Metal_60(:,1) - f_Metal_r_60_mbb(:,1)).^2));

ft_Oil_bag_60_mbb = ((Oil_data(119:end,1) - hist_avg_Oil_60(:,1)) ).^2 - (((Oil_data(119:end,1) - f_Oil_r_60_mbb(:,1)).^2 - ( hist_avg_Oil_60(:,1) - f_Oil_r_60_mbb(:,1)).^2));

ft_Power_bag_60_mbb = ((Power_data(119:end,1) - hist_avg_Power_60(:,1)) ).^2 - (((Power_data(119:end,1) - f_Power_r_60_mbb(:,1)).^2 - ( hist_avg_Power_60(:,1) - f_Power_r_60_mbb(:,1)).^2));

ft_Realty_bag_60_mbb = ((Realty_data(119:end,1) - hist_avg_Realty_60(:,1)) ).^2 - (((Realty_data(119:end,1) - f_Realty_r_60_mbb(:,1)).^2 - ( hist_avg_Realty_60(:,1) - f_Realty_r_60_mbb(:,1)).^2));

ft_Teck_bag_60_mbb = ((Teck_data(119:end,1) - hist_avg_Teck_60(:,1)) ).^2 - (((Teck_data(119:end,1) - f_Teck_r_60_mbb(:,1)).^2 - ( hist_avg_Teck_60(:,1) - f_Teck_r_60_mbb(:,1)).^2));


%t-stat of r_oos_square of Bagging with MBB
[~,~,t_stat_Auto_bag_60_mbb,~] = cust_fitlm(ft_Auto_bag_60_mbb,ones(77,1), false);
[~,~,t_stat_Bank_bag_60_mbb,~] = cust_fitlm(ft_Bank_bag_60_mbb,ones(77,1), false);
[~,~,t_stat_Cap_bag_60_mbb,~] = cust_fitlm(ft_Cap_bag_60_mbb,ones(77,1), false);
[~,~,t_stat_Con_bag_60_mbb,~] = cust_fitlm(ft_Con_bag_60_mbb,ones(77,1), false);
[~,~,t_stat_Metal_bag_60_mbb,~] = cust_fitlm(ft_Metal_bag_60_mbb,ones(77,1), false);
[~,~,t_stat_Oil_bag_60_mbb,~] = cust_fitlm(ft_Oil_bag_60_mbb,ones(77,1), false);
[~,~,t_stat_Power_bag_60_mbb,~] = cust_fitlm(ft_Power_bag_60_mbb,ones(77,1), false);
[~,~,t_stat_Realty_bag_60_mbb,~] = cust_fitlm(ft_Realty_bag_60_mbb,ones(77,1), false);
[~,~,t_stat_Teck_bag_60_mbb,~] = cust_fitlm(ft_Teck_bag_60_mbb,ones(77,1), false);
