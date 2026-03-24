
---

## 2️⃣ Apple Financial Analysis DCF

```markdown
# Apple Financial Analysis DCF

## Overview
This project provides a **fundamental financial analysis** of Apple Inc. using a **Discounted Cash Flow (DCF) model** to estimate intrinsic company value. The analysis is implemented in **R** and demonstrates how financial statements can be used to make investment decisions.

## Features
- DCF valuation based on Free Cash Flow projections
- Sensitivity analysis on discount rates and growth assumptions
- Visualizations of cash flows, intrinsic value, and sensitivity scenarios
- Step-by-step financial metrics calculations (Revenue, EBITDA, Net Income)

## Data
- Sources: Apple Annual Reports (10-K), SEC filings, Yahoo Finance
- Stored in `data/raw/` and processed in `data/processed/`

## Methodology
1. **Financial Statement Analysis:** Extract historical revenue, expenses, and cash flows
2. **Projection:** Forecast FCF for next 5–10 years
3. **DCF Valuation:** Discount projected cash flows using WACC
4. **Sensitivity Analysis:** Vary discount rates and growth to analyze valuation range
5. **Visualization:** Plot FCF trends and valuation range

## How to Run
```R
# Install required packages
install.packages(c("tidyverse", "readxl", "ggplot2"))

# Run main analysis
source("scripts/apple_dcf_analysis.R")
