library(dplyr)

# Forecast years
forecast_years <- data.frame(Year = 2026:2028)

# Base assumptions
last_revenue <- revenue_growth %>%
  filter(Year == 2025) %>%
  pull(Value)

base_forecast <- forecast_years %>%
  mutate(
    Revenue = last_revenue * (1.05)^(Year - 2025),
    Operating_Margin = 0.295,
    Operating_Income = Revenue * Operating_Margin,
    FCF = Operating_Income * 0.8
  )

# DCF assumptions
discount_rate <- 0.08
terminal_growth <- 0.025

base_dcf <- base_forecast %>%
  mutate(
    t = Year - 2025,
    Discount_Factor = 1 / (1 + discount_rate)^t,
    PV_FCF = FCF * Discount_Factor
  )

terminal_value <- tail(base_forecast$FCF, 1) *
  (1 + terminal_growth) / (discount_rate - terminal_growth)

terminal_pv <- terminal_value / (1 + discount_rate)^3

enterprise_value <- sum(base_dcf$PV_FCF) + terminal_pv

enterprise_value
