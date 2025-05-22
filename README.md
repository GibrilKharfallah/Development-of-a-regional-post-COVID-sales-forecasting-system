# 📈 Time Series Forecasting of Oil Data (2018–2021)

This project presents a **forecasting analysis** of a monthly oil-related time series using R and the `forecast` package. The dataset appears to span from January 2018 onwards and is analyzed for stationarity, model fitting, residual diagnostics, and future prediction.

## 📘 Project Overview

The goal is to build a robust ARIMA model to forecast future values based on historical oil production/sales/price data using classical time series analysis.

Key steps include:

- Visualizing the series and its statistical properties
- Stationarity testing using ADF test
- Model selection via `auto.arima()`
- Residual diagnostics and model validation
- Forecasting 12 future time points with confidence intervals

## 🛠️ Tools & Packages Used

- `tseries`: ADF test for stationarity
- `forecast`: Time series modeling and forecasting (ARIMA)
- `ggplot2`: Forecast visualization with `autoplot()`

## 🔍 Methodology

1. **Exploratory Analysis**:
   - Boxplot of the data
   - Line plot of the time series
   - Classical decomposition into trend/seasonality/residual

2. **Stationarity Testing**:
   - Augmented Dickey-Fuller test (`adf.test`)

3. **Model Selection**:
   - Automatic ARIMA selection using `auto.arima()`

4. **Validation**:
   - Diagnostic plots (`tsdiag`)
   - ACF and PACF of residuals
   - Ljung-Box test
   - Histogram and density plot of residuals

5. **Forecasting**:
   - 12-period forecast using the fitted ARIMA model
   - Plotting the forecast and printing accuracy metrics

## 📊 Output

The forecast is visualized using `autoplot(pred)` and accuracy is measured via standard metrics (e.g., MAE, RMSE).

## 🔒 License

This project is proprietary and confidential.  
The source code is provided for **viewing and educational analysis only**.

You are **not permitted** to:
- Copy or clone the repository
- Redistribute any part of the code or data
- Use it in any commercial or personal project

© Gibril Kharfallah 2022 – All rights reserved.
