library(dplyr)

# Revenue growth analysis
revenue_growth <- clean_data %>%
  filter(Metric == 'Revenue') %>%
  arrange(Year) %>%
  mutate(Growth = (Value / lag(Value) - 1) * 100)

# Operating margin analysis
operating_margin <- clean_data %>%
  filter(Metric %in% c('Operating Income', 'Revenue')) %>%
  pivot_wider(names_from = Metric, values_from = Value) %>%
  mutate(Operating_Margin = (`Operating Income` / Revenue) * 100)

revenue_growth
operating_margin
