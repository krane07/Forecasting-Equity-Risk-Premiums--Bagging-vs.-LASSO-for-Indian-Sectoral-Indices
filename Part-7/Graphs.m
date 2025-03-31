%% Plotting Actual and Forecasted ERP
subplot(1,1,1)
% BSE AUTO
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Auto_date(119:end), Auto_data(119:end,1),'-k');
hold on;
plot(Auto_date(119:end),f_Auto_r_60(1:end,1),'--r');
plot(Auto_date(119:end),Auto_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Auto_date(119:end),f_Auto_r_60(1:end,2), 'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE AUTO forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig D1.jpg"); % Uncomment to save the graph

% BSE BANKEX
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Bank_date(119:end), Bank_data(119:end,1),'-k');
hold on;
plot(Bank_date(119:end),f_Bank_r_60(1:end,1),'--r');
plot(Bank_date(119:end),Bank_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Bank_date(119:end),f_Bank_r_60(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Bank forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig D2.jpg"); % Uncomment to save the graph


% BSE CAPITAL GOODS
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Cap_date(119:end), Cap_data(119:end,1),'-k');
hold on;
plot(Cap_date(119:end),f_Cap_r_60(1:end,1),'--r');
plot(Cap_date(119:end),Cap_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Cap_date(119:end),f_Cap_r_60(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Cap forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
% saveas(gcf,"fig D3.jpg"); % Uncomment to save the graph



% BSE CONSUMER DURABLES
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Con_date(119:end), Con_data(119:end,1),'-k');
hold on;
plot(Con_date(119:end),f_Con_r_60(1:end,1),'--r');
plot(Con_date(119:end),Con_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Con_date(119:end),f_Con_r_60(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Con forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
% saveas(gcf,"fig D4.jpg"); % Uncomment to save the graph


% BSE METAL
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Metal_date(119:end), Metal_data(119:end,1),'-k');
hold on;
plot(Metal_date(119:end),f_Metal_r_60(1:end,1),'--r');
plot(Metal_date(119:end),Metal_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Metal_date(119:end),f_Metal_r_60(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Metal forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
% saveas(gcf,"fig D5.jpg"); % Uncomment to save the graph


% BSE OIL
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Oil_date(119:end), Oil_data(119:end,1),'-k');
hold on;
plot(Oil_date(119:end),f_Oil_r_60(1:end,1),'--r');
plot(Oil_date(119:end),Oil_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Oil_date(119:end),f_Oil_r_60(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Oil forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
% saveas(gcf,"fig D6.jpg"); % Uncomment to save the graph


% BSE POWER
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Power_date(119:end), Power_data(119:end,1),'-k');
hold on;
plot(Power_date(119:end),f_Power_r_60(1:end,1),'--r');
plot(Power_date(119:end),Power_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Power_date(119:end),f_Power_r_60(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Power forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
% saveas(gcf,"fig D7.jpg"); % Uncomment to save the graph


% BSE REALTY
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Realty_date(119:end), Realty_data(119:end,1),'-k');
hold on;
plot(Realty_date(119:end),f_Realty_r_60(1:end,1),'--r');
plot(Realty_date(119:end),Realty_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Realty_date(119:end),f_Realty_r_60(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Realty forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
% saveas(gcf,"fig D8.jpg"); % Uncomment to save the graph


% BSE TECK
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Teck_date(119:end), Teck_data(119:end,1),'-k');
hold on;
plot(Teck_date(119:end),f_Teck_r_60(1:end,1),'--r');
plot(Teck_date(119:end),Teck_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Teck_date(119:end),f_Teck_r_60(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Teck forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
% saveas(gcf,"fig D9.jpg"); % Uncomment to save the graph


%% CDSFE

% BSE AUTO
plot(Auto_date(119:end), cdsfe_Auto_60(1:end,1),'-r');
hold on;
plot(Auto_date(119:end), cdsfe_Auto_60(1:end,2),'-b');
plot(Auto_date(119:end), cdsfe_Auto_lasso_60(1:end,1),'-m');
plot(Auto_date(119:end), zeros(77,1),'-.k');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE AUTO', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 10.jpg"); % Uncomment to save the graph


% BSE BANKEX
plot(Bank_date(119:end), cdsfe_Bank_60(1:end,1),'-r');
hold on;
plot(Bank_date(119:end), cdsfe_Bank_60(1:end,2),'-b');
plot(Bank_date(119:end), cdsfe_Bank_lasso_60(1:end,1),'-m');
plot(Bank_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE BANKEX', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 11.jpg"); % Uncomment to save the graph


% BSE CAPITAL GOODS
plot(Cap_date(119:end), cdsfe_Cap_60(1:end,1),'-r');
hold on;
plot(Cap_date(119:end), cdsfe_Cap_60(1:end,2),'-b');
plot(Cap_date(119:end), cdsfe_Cap_lasso_60(1:end,1),'-m');
plot(Cap_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE CAPITAL GOODS', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 12.jpg"); % Uncomment to save the graph



% BSE CONSUMER DURABLES
plot(Con_date(119:end), cdsfe_Con_60(1:end,1),'-r');
hold on;
plot(Con_date(119:end), cdsfe_Con_60(1:end,2),'-b');
plot(Con_date(119:end), cdsfe_Con_lasso_60(1:end,1),'-m');
plot(Con_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE CONSUMER DURABLES', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 13.jpg"); % Uncomment to save the graph


% BSE METAL
plot(Metal_date(119:end), cdsfe_Metal_60(1:end,1),'-r');
hold on;
plot(Metal_date(119:end), cdsfe_Metal_60(1:end,2),'-b');
plot(Metal_date(119:end), cdsfe_Metal_lasso_60(1:end,1),'-m');
plot(Metal_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE METAL', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 14.jpg"); % Uncomment to save the graph


% BSE OIL
plot(Oil_date(119:end), cdsfe_Oil_60(1:end,1),'-r');
hold on;
plot(Oil_date(119:end), cdsfe_Oil_60(1:end,2),'-b');
plot(Oil_date(119:end), cdsfe_Oil_lasso_60(1:end,1),'-m');
plot(Oil_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE OIL & GAS', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 15.jpg"); % Uncomment to save the graph


% BSE POWER
plot(Power_date(119:end), cdsfe_Power_60(1:end,1),'-r');
hold on;
plot(Power_date(119:end), cdsfe_Power_60(1:end,2),'-b');
plot(Power_date(119:end), cdsfe_Power_lasso_60(1:end,1),'-m');
plot(Power_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE POWER', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 16.jpg"); % Uncomment to save the graph


% BSE REALTY
plot(Realty_date(119:end), cdsfe_Realty_60(1:end,1),'-r');
hold on;
plot(Realty_date(119:end), cdsfe_Realty_60(1:end,2),'-b');
plot(Realty_date(119:end), cdsfe_Realty_lasso_60(1:end,1),'-m');
plot(Realty_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE REALTY', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 17.jpg"); % Uncomment to save the graph


% BSE TECK
plot(Teck_date(119:end), cdsfe_Teck_60(1:end,1),'-r');
hold on;
plot(Teck_date(119:end), cdsfe_Teck_60(1:end,2),'-b');
plot(Teck_date(119:end), cdsfe_Teck_lasso_60(1:end,1),'-m');
plot(Teck_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE TECK', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 18.jpg"); % Uncomment to save the graph


%%Plotting Actual and Forecasted ERP 90%

subplot(1,1,1)
% BSE AUTO
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Auto_date(177:end), Auto_data(177:end,1),'-k');
hold on;
plot(Auto_date(177:end),f_Auto_r_90(1:end,1),'--r');
plot(Auto_date(177:end),Auto_lasso_fc(1:end,1),'-.m');
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Auto_date(177:end),f_Auto_r_90(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE AUTO forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig F1.jpg"); % Uncomment to save the graph



% BSE BANKEX
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Bank_date(177:end), Bank_data(177:end,1),'-k');
hold on;
plot(Bank_date(177:end),f_Bank_r_90(1:end,1),'--r');
plot(Bank_date(177:end),Bank_lasso_fc(1:end,1),'-.m');
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Bank_date(177:end),f_Bank_r_90(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Bank forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig F2.jpg"); % Uncomment to save the graph


% BSE CAPITAL GOODS
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Cap_date(177:end), Cap_data(177:end,1),'-k');
hold on;
plot(Cap_date(177:end),f_Cap_r_90(1:end,1),'--r');
plot(Cap_date(177:end),Cap_lasso_fc(1:end,1),'-.m');
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Cap_date(177:end),f_Cap_r_90(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Cap forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig F3.jpg"); % Uncomment to save the graph



% BSE CONSUMER DURABLES
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Con_date(177:end), Con_data(177:end,1),'-k');
hold on;
plot(Con_date(177:end),f_Con_r_90(1:end,1),'--r');
plot(Con_date(177:end),Con_lasso_fc(1:end,1),'-.m');
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Con_date(177:end),f_Con_r_90(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Con forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig F4.jpg"); % Uncomment to save the graph



% BSE METAL
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Metal_date(177:end), Metal_data(177:end,1),'-k');
hold on;
plot(Metal_date(177:end),f_Metal_r_90(1:end,1),'--r');
plot(Metal_date(177:end),Metal_lasso_fc(1:end,1),'-.m');
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Metal_date(177:end),f_Metal_r_90(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Metal forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig F5.jpg"); % Uncomment to save the graph


% BSE OIL
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Oil_date(177:end), Oil_data(177:end,1),'-k');
hold on;
plot(Oil_date(177:end),f_Oil_r_90(1:end,1),'--r');
plot(Oil_date(177:end),Oil_lasso_fc(1:end,1),'-.m');
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Oil_date(177:end),f_Oil_r_90(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Oil forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig F6.jpg"); % Uncomment to save the graph


% BSE POWER
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Power_date(177:end), Power_data(177:end,1),'-k');
hold on;
plot(Power_date(177:end),f_Power_r_90(1:end,1),'--r');
plot(Power_date(177:end),Power_lasso_fc(1:end,1),'-.m');
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Power_date(177:end),f_Power_r_90(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Power forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig F7.jpg"); % Uncomment to save the graph


% BSE REALTY
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Realty_date(177:end), Realty_data(177:end,1),'-k');
hold on;
plot(Realty_date(177:end),f_Realty_r_90(1:end,1),'--r');
plot(Realty_date(177:end),Realty_lasso_fc(1:end,1),'-.m');
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Realty_date(177:end),f_Realty_r_90(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Realty forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig F8.jpg"); % Uncomment to save the graph



% BSE TECK
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Teck_date(177:end), Teck_data(177:end,1),'-k');
hold on;
plot(Teck_date(177:end),f_Teck_r_90(1:end,1),'--r');
plot(Teck_date(177:end),Teck_lasso_fc(1:end,1),'-.m');
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Teck_date(177:end),f_Teck_r_90(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Teck forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig F9.jpg"); % Uncomment to save the graph

%%CDSFE 90%

% BSE AUTO
plot(Auto_date(177:end), cdsfe_Auto_90(1:end,1),'-r');
hold on;
plot(Auto_date(177:end), cdsfe_Auto_90(1:end,2),'-b');
plot(Auto_date(177:end), cdsfe_Auto_lasso_90(1:end,1),'-m');
plot(Auto_date(177:end), zeros(19,1),'-.k');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE AUTO', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 28.jpg"); % Uncomment to save the graph


% BSE BANKEX
plot(Bank_date(177:end), cdsfe_Bank_90(1:end,1),'-r');
hold on;
plot(Bank_date(177:end), cdsfe_Bank_90(1:end,2),'-b');
plot(Bank_date(177:end), cdsfe_Bank_lasso_90(1:end,1),'-m');
plot(Bank_date(177:end), zeros(19,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE BANKEX', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 29.jpg"); % Uncomment to save the graph


% BSE CAPITAL GOODS
plot(Cap_date(177:end), cdsfe_Cap_90(1:end,1),'-r');
hold on;
plot(Cap_date(177:end), cdsfe_Cap_90(1:end,2),'-b');
plot(Cap_date(177:end), cdsfe_Cap_lasso_90(1:end,1),'-m');
plot(Cap_date(177:end), zeros(19,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE CAPITAL GOODS', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 30.jpg"); % Uncomment to save the graph



% BSE CONSUMER DURABLES
plot(Con_date(177:end), cdsfe_Con_90(1:end,1),'-r');
hold on;
plot(Con_date(177:end), cdsfe_Con_90(1:end,2),'-b');
plot(Con_date(177:end), cdsfe_Con_lasso_90(1:end,1),'-m');
plot(Con_date(177:end), zeros(19,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE CONSUMER DURABLES', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 31.jpg"); % Uncomment to save the graph


% BSE METAL
plot(Metal_date(177:end), cdsfe_Metal_90(1:end,1),'-r');
hold on;
plot(Metal_date(177:end), cdsfe_Metal_90(1:end,2),'-b');
plot(Metal_date(177:end), cdsfe_Metal_lasso_90(1:end,1),'-m');
plot(Metal_date(177:end), zeros(19,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE METAL', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 32.jpg"); % Uncomment to save the graph



% BSE OIL
plot(Oil_date(177:end), cdsfe_Oil_90(1:end,1),'-r');
hold on;
plot(Oil_date(177:end), cdsfe_Oil_90(1:end,2),'-b');
plot(Oil_date(177:end), cdsfe_Oil_lasso_90(1:end,1),'-m');
plot(Oil_date(177:end), zeros(19,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE OIL & GAS', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 33.jpg"); % Uncomment to save the graph


% BSE POWER
plot(Power_date(177:end), cdsfe_Power_90(1:end,1),'-r');
hold on;
plot(Power_date(177:end), cdsfe_Power_90(1:end,2),'-b');
plot(Power_date(177:end), cdsfe_Power_lasso_90(1:end,1),'-m');
plot(Power_date(177:end), zeros(19,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE POWER', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 34.jpg"); % Uncomment to save the graph


% BSE REALTY
plot(Realty_date(177:end), cdsfe_Realty_90(1:end,1),'-r');
hold on;
plot(Realty_date(177:end), cdsfe_Realty_90(1:end,2),'-b');
plot(Realty_date(177:end), cdsfe_Realty_lasso_90(1:end,1),'-m');
plot(Realty_date(177:end), zeros(19,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE REALTY', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 35.jpg"); % Uncomment to save the graph


% BSE TECK
plot(Teck_date(177:end), cdsfe_Teck_90(1:end,1),'-r');
hold on;
plot(Teck_date(177:end), cdsfe_Teck_90(1:end,2),'-b');
plot(Teck_date(177:end), cdsfe_Teck_lasso_90(1:end,1),'-m');
plot(Teck_date(177:end), zeros(19,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE TECK', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 36.jpg"); % Uncomment to save the graph

%%Plotting Actual and Forecasted ERP WITH SPI
subplot(1,1,1)
% BSE AUTO
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Auto_date(119:end), Auto_data(119:end,1),'-k');
hold on;
plot(Auto_date(119:end),f_Auto_r_60_new(1:end,1),'--r');
plot(Auto_date(119:end),Auto_lasso_fc_60_new(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Auto_date(119:end),f_Auto_r_60_new(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE AUTO forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig H1.jpg"); % Uncomment to save the graph



% BSE BANKEX
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Bank_date(119:end), Bank_data(119:end,1),'-k');
hold on;
plot(Bank_date(119:end),f_Bank_r_60_new(1:end,1),'--r');
plot(Bank_date(119:end),Bank_lasso_fc_60_new(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Bank_date(119:end),f_Bank_r_60_new(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Bank forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig H2.jpg"); % Uncomment to save the graph


% BSE CAPITAL GOODS
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Cap_date(119:end), Cap_data(119:end,1),'-k');
hold on;
plot(Cap_date(119:end),f_Cap_r_60_new(1:end,1),'--r');
plot(Cap_date(119:end),Cap_lasso_fc_60_new(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Cap_date(119:end),f_Cap_r_60_new(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Cap forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig H3.jpg"); % Uncomment to save the graph



% BSE CONSUMER DURABLES
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Con_date(119:end), Con_data(119:end,1),'-k');
hold on;
plot(Con_date(119:end),f_Con_r_60_new(1:end,1),'--r');
plot(Con_date(119:end),Con_lasso_fc_60_new(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Con_date(119:end),f_Con_r_60_new(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Con forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig H4.jpg"); % Uncomment to save the graph



% BSE METAL
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Metal_date(119:end), Metal_data(119:end,1),'-k');
hold on;
plot(Metal_date(119:end),f_Metal_r_60_new(1:end,1),'--r');
plot(Metal_date(119:end),Metal_lasso_fc_60_new(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Metal_date(119:end),f_Metal_r_60_new(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Metal forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig H5.jpg"); % Uncomment to save the graph


% BSE OIL
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Oil_date(119:end), Oil_data(119:end,1),'-k');
hold on;
plot(Oil_date(119:end),f_Oil_r_60_new(1:end,1),'--r');
plot(Oil_date(119:end),Oil_lasso_fc_60_new(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Oil_date(119:end),f_Oil_r_60_new(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Oil forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig H6.jpg"); % Uncomment to save the graph


% BSE POWER
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Power_date(119:end), Power_data(119:end,1),'-k');
hold on;
plot(Power_date(119:end),f_Power_r_60_new(1:end,1),'--r');
plot(Power_date(119:end),Power_lasso_fc_60_new(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Power_date(119:end),f_Power_r_60_new(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Power forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig H7.jpg"); % Uncomment to save the graph


% BSE REALTY
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Realty_date(119:end), Realty_data(119:end,1),'-k');
hold on;
plot(Realty_date(119:end),f_Realty_r_60_new(1:end,1),'--r');
plot(Realty_date(119:end),Realty_lasso_fc_60_new(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Realty_date(119:end),f_Realty_r_60_new(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Realty forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig H8.jpg"); % Uncomment to save the graph



% BSE TECK
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Teck_date(119:end), Teck_data(119:end,1),'-k');
hold on;
plot(Teck_date(119:end),f_Teck_r_60_new(1:end,1),'--r');
plot(Teck_date(119:end),Teck_lasso_fc_60_new(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Teck_date(119:end),f_Teck_r_60_new(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Teck forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig H9.jpg"); % Uncomment to save the graph

%% CDSFE PLT WITH SPI
% BSE AUTO
plot(Auto_date(119:end), cdsfe_Auto_60_new(1:end,1),'-r');
hold on;
plot(Auto_date(119:end), cdsfe_Auto_60_new(1:end,2),'-b');
plot(Auto_date(119:end), cdsfe_Auto_lasso_60_new(1:end,1),'-m');
plot(Auto_date(119:end), zeros(77,1),'-.k');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE AUTO', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 46.jpg"); % Uncomment to save the graph


% BSE BANKEX
plot(Bank_date(119:end), cdsfe_Bank_60_new(1:end,1),'-r');
hold on;
plot(Bank_date(119:end), cdsfe_Bank_60_new(1:end,2),'-b');
plot(Bank_date(119:end), cdsfe_Bank_lasso_60_new(1:end,1),'-m');
plot(Bank_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE BANKEX', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 47.jpg"); % Uncomment to save the graph


% BSE CAPITAL GOODS
plot(Cap_date(119:end), cdsfe_Cap_60_new(1:end,1),'-r');
hold on;
plot(Cap_date(119:end), cdsfe_Cap_60_new(1:end,2),'-b');
plot(Cap_date(119:end), cdsfe_Cap_lasso_60_new(1:end,1),'-m');
plot(Cap_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE CAPITAL GOODS', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 48.jpg"); % Uncomment to save the graph



% BSE CONSUMER DURABLES
plot(Con_date(119:end), cdsfe_Con_60_new(1:end,1),'-r');
hold on;
plot(Con_date(119:end), cdsfe_Con_60_new(1:end,2),'-b');
plot(Con_date(119:end), cdsfe_Con_lasso_60_new(1:end,1),'-m');
plot(Con_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE CONSUMER DURABLES', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 49.jpg"); % Uncomment to save the graph


% BSE METAL
plot(Metal_date(119:end), cdsfe_Metal_60_new(1:end,1),'-r');
hold on;
plot(Metal_date(119:end), cdsfe_Metal_60_new(1:end,2),'-b');
plot(Metal_date(119:end), cdsfe_Metal_lasso_60_new(1:end,1),'-m');
plot(Metal_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE METAL', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 50.jpg"); % Uncomment to save the graph


% BSE OIL
plot(Oil_date(119:end), cdsfe_Oil_60_new(1:end,1),'-r');
hold on;
plot(Oil_date(119:end), cdsfe_Oil_60_new(1:end,2),'-b');
plot(Oil_date(119:end), cdsfe_Oil_lasso_60_new(1:end,1),'-m');
plot(Oil_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE OIL & GAS', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 51.jpg"); % Uncomment to save the graph


% BSE POWER
plot(Power_date(119:end), cdsfe_Power_60_new(1:end,1),'-r');
hold on;
plot(Power_date(119:end), cdsfe_Power_60_new(1:end,2),'-b');
plot(Power_date(119:end), cdsfe_Power_lasso_60_new(1:end,1),'-m');
plot(Power_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE POWER', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 52.jpg"); % Uncomment to save the graph


% BSE REALTY
plot(Realty_date(119:end), cdsfe_Realty_60_new(1:end,1),'-r');
hold on;
plot(Realty_date(119:end), cdsfe_Realty_60_new(1:end,2),'-b');
plot(Realty_date(119:end), cdsfe_Realty_lasso_60_new(1:end,1),'-m');
plot(Realty_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE REALTY', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 53.jpg"); % Uncomment to save the graph


% BSE TECK
plot(Teck_date(119:end), cdsfe_Teck_60_new(1:end,1),'-r');
hold on;
plot(Teck_date(119:end), cdsfe_Teck_60_new(1:end,2),'-b');
plot(Teck_date(119:end), cdsfe_Teck_lasso_60_new(1:end,1),'-m');
plot(Teck_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE TECK', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 54.jpg"); % Uncomment to save the graph

%%Plotting Actual and Forecasted ERP MBB SAMPLING
subplot(1,1,1)
% BSE AUTO
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Auto_date(119:end), Auto_data(119:end,1),'-k');
hold on;
plot(Auto_date(119:end),f_Auto_r_60_mbb(1:end,1),'--r');
plot(Auto_date(119:end),Auto_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Auto_date(119:end),f_Auto_r_60_mbb(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE AUTO forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig J1.jpg"); % Uncomment to save the graph



% BSE BANKEX
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Bank_date(119:end), Bank_data(119:end,1),'-k');
hold on;
plot(Bank_date(119:end),f_Bank_r_60_mbb(1:end,1),'--r');
plot(Bank_date(119:end),Bank_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Bank_date(119:end),f_Bank_r_60_mbb(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Bank forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig J2.jpg"); % Uncomment to save the graph


% BSE CAPITAL GOODS
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Cap_date(119:end), Cap_data(119:end,1),'-k');
hold on;
plot(Cap_date(119:end),f_Cap_r_60_mbb(1:end,1),'--r');
plot(Cap_date(119:end),Cap_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Cap_date(119:end),f_Cap_r_60_mbb(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Cap forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig J3.jpg"); % Uncomment to save the graph



% BSE CONSUMER DURABLES
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Con_date(119:end), Con_data(119:end,1),'-k');
hold on;
plot(Con_date(119:end),f_Con_r_60_mbb(1:end,1),'--r');
plot(Con_date(119:end),Con_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Con_date(119:end),f_Con_r_60_mbb(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Con forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig J4.jpg"); % Uncomment to save the graph



% BSE METAL
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Metal_date(119:end), Metal_data(119:end,1),'-k');
hold on;
plot(Metal_date(119:end),f_Metal_r_60_mbb(1:end,1),'--r');
plot(Metal_date(119:end),Metal_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Metal_date(119:end),f_Metal_r_60_mbb(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Metal forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig J5.jpg"); % Uncomment to save the graph


% BSE OIL
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Oil_date(119:end), Oil_data(119:end,1),'-k');
hold on;
plot(Oil_date(119:end),f_Oil_r_60_mbb(1:end,1),'--r');
plot(Oil_date(119:end),Oil_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Oil_date(119:end),f_Oil_r_60_mbb(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Oil forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig J6.jpg"); % Uncomment to save the graph


% BSE POWER
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Power_date(119:end), Power_data(119:end,1),'-k');
hold on;
plot(Power_date(119:end),f_Power_r_60_mbb(1:end,1),'--r');
plot(Power_date(119:end),Power_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Power_date(119:end),f_Power_r_60_mbb(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Power forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig J7.jpg"); % Uncomment to save the graph


% BSE REALTY
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Realty_date(119:end), Realty_data(119:end,1),'-k');
hold on;
plot(Realty_date(119:end),f_Realty_r_60_mbb(1:end,1),'--r');
plot(Realty_date(119:end),Realty_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Realty_date(119:end),f_Realty_r_60_mbb(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Realty forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig J8.jpg"); % Uncomment to save the graph



% BSE TECK
yyaxis left;
% Change the right axis color to black
set(gca, 'YColor', 'k');
plot(Teck_date(119:end), Teck_data(119:end,1),'-k');
hold on;
plot(Teck_date(119:end),f_Teck_r_60_mbb(1:end,1),'--r');
plot(Teck_date(119:end),Teck_lasso_fc_60(1:end,1),'-.m');
ylabel("ERP");
yyaxis right;
% Change the right axis color to blue
set(gca, 'YColor', 'b');
plot(Teck_date(119:end),f_Teck_r_60_mbb(1:end,2),'b');
legend('Equity Premium', 'Bagging 5%','LASSO', 'Bagging 1%', Location="best");
title('Monthly BSE Teck forecast', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("ERP");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig J9.jpg"); % Uncomment to save the graph

%% CDSFE PLOT WITH MBB SAMPLING
% BSE AUTO
plot(Auto_date(119:end), cdsfe_Auto_60_mbb(1:end,1),'-r');
hold on;
plot(Auto_date(119:end), cdsfe_Auto_60_mbb(1:end,2),'-b');
plot(Auto_date(119:end), cdsfe_Auto_lasso_60(1:end,1),'-m');
plot(Auto_date(119:end), zeros(77,1),'-.k');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE AUTO', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 64.jpg"); % Uncomment to save the graph


% BSE BANKEX
plot(Bank_date(119:end), cdsfe_Bank_60_mbb(1:end,1),'-r');
hold on;
plot(Bank_date(119:end), cdsfe_Bank_60_mbb(1:end,2),'-b');
plot(Bank_date(119:end), cdsfe_Bank_lasso_60(1:end,1),'-m');
plot(Bank_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE BANKEX', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 65.jpg"); % Uncomment to save the graph


% BSE CAPITAL GOODS
plot(Cap_date(119:end), cdsfe_Cap_60_mbb(1:end,1),'-r');
hold on;
plot(Cap_date(119:end), cdsfe_Cap_60_mbb(1:end,2),'-b');
plot(Cap_date(119:end), cdsfe_Cap_lasso_60(1:end,1),'-m');
plot(Cap_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE CAPITAL GOODS', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 66.jpg"); % Uncomment to save the graph



% BSE CONSUMER DURABLES
plot(Con_date(119:end), cdsfe_Con_60_mbb(1:end,1),'-r');
hold on;
plot(Con_date(119:end), cdsfe_Con_60_mbb(1:end,2),'-b');
plot(Con_date(119:end), cdsfe_Con_lasso_60(1:end,1),'-m');
plot(Con_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE CONSUMER DURABLES', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 67.jpg"); % Uncomment to save the graph


% BSE METAL
plot(Metal_date(119:end), cdsfe_Metal_60_mbb(1:end,1),'-r');
hold on;
plot(Metal_date(119:end), cdsfe_Metal_60_mbb(1:end,2),'-b');
plot(Metal_date(119:end), cdsfe_Metal_lasso_60(1:end,1),'-m');
plot(Metal_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE METAL', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 68.jpg"); % Uncomment to save the graph


% BSE OIL
plot(Oil_date(119:end), cdsfe_Oil_60_mbb(1:end,1),'-r');
hold on;
plot(Oil_date(119:end), cdsfe_Oil_60_mbb(1:end,2),'-b');
plot(Oil_date(119:end), cdsfe_Oil_lasso_60(1:end,1),'-m');
plot(Oil_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE OIL & GAS', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 69.jpg"); % Uncomment to save the graph


% BSE POWER
plot(Power_date(119:end), cdsfe_Power_60_mbb(1:end,1),'-r');
hold on;
plot(Power_date(119:end), cdsfe_Power_60_mbb(1:end,2),'-b');
plot(Power_date(119:end), cdsfe_Power_lasso_60(1:end,1),'-m');
plot(Power_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE POWER', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 70.jpg"); % Uncomment to save the graph


% BSE REALTY
plot(Realty_date(119:end), cdsfe_Realty_60_mbb(1:end,1),'-r');
hold on;
plot(Realty_date(119:end), cdsfe_Realty_60_mbb(1:end,2),'-b');
plot(Realty_date(119:end), cdsfe_Realty_lasso_60(1:end,1),'-m');
plot(Realty_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE REALTY', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 71.jpg"); % Uncomment to save the graph


% BSE TECK
plot(Teck_date(119:end), cdsfe_Teck_60_mbb(1:end,1),'-r');
hold on;
plot(Teck_date(119:end), cdsfe_Teck_60_mbb(1:end,2),'-b');
plot(Teck_date(119:end), cdsfe_Teck_lasso_60(1:end,1),'-m');
plot(Teck_date(119:end), zeros(77,1),'-.r');
legend('Bagging 5%', 'Bagging 1%', 'LASSO', 'Benchmark', Location="best");
title('CDSFE BSE TECK', FontSize=10,FontName="Calibri");
datetick('x', 'yyyy');
xlabel("Time");
ylabel("CDSFE");
grid on;
hold off;
% Saving the current graph
saveas(gcf,"fig 72.jpg"); % Uncomment to save the graph
