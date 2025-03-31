# Forecasting-Equity-Risk-Premiums--Bagging-vs.-LASSO-for-Indian-Sectoral-Indices
## Overview
This repository contains MATLAB scripts and functions used for analyzing sectoral indices of the Indian stock market (BSE) as part of a dissertation. The analysis includes data collection, descriptive statistics, forecasting using Bagging and LASSO techniques, statistical evaluations, and graphical comparisons.

## Code Structure

### **1. Dissertation (Part 1: Data Collection & Preprocessing)**
- Collects data for BSE sectoral indices:
  - BSE AUTO
  - BSE BANKEX
  - BSE CAPITAL GOODS
  - BSE CONSUMER DURABLES
  - BSE METAL
  - BSE OIL & GAS
  - BSE POWER
  - BSE REALTY
  - BSE TECK
- Uses BSE Data.xlsx as the dataset for all calculations and analysis.
- Converts the T-bill rate to a monthly format and calculates the Equity Risk Premium.
- Loads and processes fundamental variables:
  - Earnings-price ratio (EP), Book-to-market ratio (BM), Dividend Yield (DY), Dividend-price ratio (DP), Dividend payout ratio (DE)
- Computes stock market variance and macroeconomic variables:
  - T-bill (TBILL), Long-term yield (LTY), Long-term returns (LTR), Term spread (TS), Default yield spread (DYS), Inflation (INF)
- Calculates historical averages and mean square errors (MSE) for training data.

#### Functions Used:
- **log_pop:** Loads data, processes dates, and applies log transformation if needed.
- **s_var:** Computes monthly stock price variance.
- **mse_cal:** Computes Mean Forecast Error.

### **2. Test (Part 2: Statistical Analysis & Hypothesis Testing)**
- Computes descriptive statistics using `desc_stat` function.
- Generates a correlation matrix.
- Conducts various statistical tests:
  - Augmented Dickey-Fuller (ADF), AR(1), ARCH(6), Endogeneity Test using `AR_ARCH_Endo_test`.

#### Functions Used:
- **desc_stat:** Computes mean, median, standard deviation, skewness, kurtosis, min, and max.
- **AR_ARCH_Endo_test:** Performs AR(1) coefficient estimation, ARCH(6) test, and Endogeneity test.

### **3. Bagging_Forecast (Part 3: Forecasting using Bagging Technique)**
- Implements a Bagging technique for forecasting.
- Uses `mse_cal` function to compute forecast errors.

#### Functions Used:
- **bagging:**
  - Implements block bootstrap sampling.
  - Selects statistically significant predictors at 5% and 1% levels using `cust_fitlm`.
  - Computes forecasts as the average of predictions across multiple samples.
- **cust_fitlm:** Fits a multivariate regression model based on statistical significance.

### **4. Lasso (Part 4: Forecasting using LASSO Regression)**
- Implements LASSO regression for forecasting.
- Computes mean squared error (MSE) using `mse_cal`.

### **5. CDSFE_cal (Part 5: Forecast Error Analysis)**
- Computes Cumulative Differences in Squared Forecast Errors between benchmark (historical average) and alternative models (Bagging, LASSO).
- Constructs a graphical evaluation tool.

### **6. rct_square_cal (Part 6: R-Squared Calculation)**
- Computes R-squared statistics and evaluates their statistical significance.

### **7. Graphs (Part 7: Performance Visualization)**
- Compares Bagging, LASSO, and Historical Average models through various graphical representations.

## Usage
1. Run `Dissertation.m` to collect and preprocess data.
2. Execute `Test.m` to perform statistical analysis.
3. Use `Bagging_Forecast.m` or `Lasso.m` to generate forecasts.
4. Run `CDSFE_cal.m` and `rct_square_cal.m` for forecast error evaluation and R-squared calculations.
5. Use `Graphs.m` to visualize model performances.

## Dependencies
- MATLAB R2020a or later.
- Required MATLAB toolboxes:
  - Statistics and Machine Learning Toolbox
  - Econometrics Toolbox
