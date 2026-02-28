library(ggplot2)
library(scales)

# FCF plot
fcf_plot <- ggplot(base_forecast, aes(x = Year, y = FCF)) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 2) +
  scale_y_continuous(labels = comma) +
  labs(
    title = 'Apple Free Cash Flow Forecast',
    x = 'Year',
    y = 'Free Cash Flow (USD millions)'
  ) +
  theme_minimal()

fcf_plot
