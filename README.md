# easystatspackage
easyStats: Simple statistical summaries and interactive visualizations with a built-in dataset and Shiny app

# easyStats

**easyStats** is an R package that provides simple summary statistics for numeric data and interactive visualizations using a Shiny app. It comes with a built-in dataset on students’ study hours and grades, making it easy to explore and analyze data immediately.

---

## Features

- Summarize numeric vectors and data frame columns:
  - Mean, median, standard deviation, min, max, missing values
- Scatterplot visualization with a regression line
- Interactive Shiny app for exploring the `study_hours` dataset
- Lightweight and easy to install

---

## Dataset

The package includes a small dataset `study_hours`:
---

## Installation

```r
# Install devtools if needed
install.packages("devtools")

# Install the package from GitHub
devtools::install_github("YOUR_USERNAME/easyStats")
