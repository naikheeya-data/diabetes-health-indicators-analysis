# 02_table1.R
# Create Table 1: Distribution of diabetes status

# Load the dataset
library(tidyverse)

diabetes <- read_csv(
  "data/diabetes_012_health_indicators_BRFSS2015.csv"
)

# Count participants in each diabetes category
diabetes_counts <- table(diabetes$Diabetes_012)

# Calculate percentages
diabetes_percentages <- prop.table(diabetes_counts) * 100

# Create Table 1
table1 <- data.frame(
  `Diabetes Status` = c("No diabetes", "Prediabetes", "Diabetes"),
  `Number of Participants` = as.numeric(diabetes_counts[c("0", "1", "2")]),
  `Percentage (%)` = round(as.numeric(diabetes_percentages[c("0", "1", "2")]), 1),
  check.names = FALSE
)

# Display Table 1
print(table1)