# 03_figure1.R
# Create Figure 1: BMI distribution by diabetes status

library(tidyverse)

diabetes <- read_csv(
  "data/diabetes_012_health_indicators_BRFSS2015.csv"
)

diabetes <- diabetes %>%
  mutate(
    diabetes_status = case_when(
      Diabetes_012 == 0 ~ "No diabetes",
      Diabetes_012 == 1 ~ "Prediabetes",
      Diabetes_012 == 2 ~ "Diabetes"
    )
  )

figure1 <- ggplot(
  diabetes,
  aes(x = diabetes_status, y = BMI)
) +
  geom_boxplot() +
  labs(
    title = "BMI Distribution by Diabetes Status",
    x = "Diabetes Status",
    y = "Body Mass Index (kg/m²)"
  ) +
  theme_minimal(base_size = 12)

print(figure1)