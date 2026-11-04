
# 01_data_cleaning.R
# Diabetes Health Indicators Project

# Load required package
library(tidyverse)

# Load the original dataset
diabetes <- read_csv(
  "data/diabetes_012_health_indicators_BRFSS2015.csv"
)

# Check dataset dimensions
dim(diabetes)

# View the first six observations
head(diabetes)

# Check variable names
names(diabetes)

# Check missing values
colSums(is.na(diabetes))


# Check diabetes outcome categories
table(diabetes$Diabetes_012)

# Check BMI distribution
summary(diabetes$BMI)

# Check unique values of categorical variables
unique(diabetes$Diabetes_012)
unique(diabetes$Sex)
unique(diabetes$Age)
unique(diabetes$Education)
unique(diabetes$Income)


# Check frequency of BMI values
table(diabetes$BMI)

# Check participants with BMI greater than 60
sum(diabetes$BMI > 60)

# Check diabetes status distribution
table(diabetes$Diabetes_012)

# Check percentages of diabetes status
prop.table(table(diabetes$Diabetes_012)) * 100


