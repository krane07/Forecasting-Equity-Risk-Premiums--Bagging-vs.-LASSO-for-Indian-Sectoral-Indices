function [ar_coeff, arch_stat, gamma, resi_data1]= AR_ARCh_Endo_test(flag, data1, data2, data2_resi)
%USER DEFINED FUNCTION WHICH CONDUCTS AR(1), ARCH(6) AND ENDOGENEITY TESTS.

size_data1 = size(data1,2);
ar_mdl = arima(1,0,0);
% Estimating by Maximum Likelihood approach
for i=1:size_data1
    opt_fit = estimate(ar_mdl, data1(:,i));
    ar_coeff(i,1) = cell2mat(opt_fit.AR(1,1));
    [resi_data1(:,i),~] = infer(opt_fit, data1(:,i));
end


for i=1:size_data1
% Fitting a AR(1) model without drift
model = arima('Constant', 0, 'ARLags', 1, 'Variance', garch(0, 0));
est_model = estimate(model, data1(:,i));

% Getting the residuals from the model
resi = infer(est_model, data1(:,1));

% Testing for ARCH effects using 6 lags
[~, arch_stat(i,1), arch_stat(i,2), ~] = archtest(resi, 'Lags', 6);
clear model; clear est_model; clear resi;
end

gamma = zeros(1,1);
if (flag == 1)
    clear gamma;
    temp = [data1,data2];
    resi = [resi_data1,data2_resi];
    size_data = size_data1 + size(data2,2);
    for i=2:size_data
        model = fitlm(temp(1:end-1,i), temp(2:end,1));
        epsilon(:,i-1) = model.Residuals.Raw;
        clear model;

        model = fitlm(resi(2:end,i), epsilon(:,i-1), 'Intercept', false);
        gamma(i-1,1) = model.Coefficients.Estimate;
        gamma(i-1,2) = model.Coefficients.pValue;
        clear model;
    end

end

end