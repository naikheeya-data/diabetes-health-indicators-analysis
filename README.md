# Diabetes Health Indicators Analysis

## Project Overview

This project analyzes the Diabetes Health Indicators dataset from the 2015 Behavioral Risk Factor Surveillance System (BRFSS). The goal is to describe the distribution of diabetes status and explore patterns in diabetes status according to selected health and behavioral characteristics.

The primary outcome is diabetes status, categorized as no diabetes, prediabetes, or diabetes.

## Dataset

The analysis uses the Diabetes Health Indicators dataset, which contains 253,680 survey responses and 22 variables.

The dataset includes information on:
- Demographic characteristics
- Body mass index (BMI)
- High blood pressure and high cholesterol
- Physical activity
- Smoking
- General health
- Diabetes status

## Project Structure

```text
diabetes_project/
├── data/
│   └── diabetes_012_health_indicators_BRFSS2015.csv
├── R/
│   ├── 01_data_cleaning.R
│   ├── 02_table1.R
│   └── 03_figure1.R
├── diabetes_project.Rmd
├── diabetes_project.pdf
├── Makefile
└── README.md
```

## Analysis

The project includes:

- Dataset inspection and preparation.
- Table 1: Distribution of diabetes status.
- Figure 1: BMI distribution by diabetes status.
- A reproducible report generated using R Markdown.

## Required Software and Packages

- R
- RStudio
- R packages: tidyverse, knitr, kableExtra, and rmarkdown
- A LaTeX distribution for PDF generation
- GNU Make

## How to Run the Project

1. Open the project directory in RStudio.
2. Ensure the required R packages are installed.
3. Open the Terminal in the project directory.
4. Run the following command to generate the PDF report:

```bash
make
```

To remove the generated PDF:

```bash
make clean
```

## Output

The final report is generated as:

`diabetes_project.pdf`

The report includes the project introduction, data and methods, descriptive summary table, and BMI boxplot.

## Reproducibility

The analysis is organized into separate R scripts and an R Markdown report. The Makefile automates PDF generation, making the project easier to reproduce.