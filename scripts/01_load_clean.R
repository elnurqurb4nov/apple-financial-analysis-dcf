library(readxl)
library(dplyr)
library(tidyr)

# Load data
raw_data <- read_excel('data/apple_financial_model.xlsx')

# Rename first column
colnames(raw_data)[1] <- 'Metric'

# Transform to long format
clean_data <- raw_data %>%
  pivot_longer(
    cols = -Metric,
    names_to = 'Year',
    values_to = 'Value'
  )

clean_data$Year <- as.numeric(clean_data$Year)

clean_data
