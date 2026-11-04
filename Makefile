all: diabetes_project.pdf

diabetes_project.pdf: diabetes_project.Rmd R/01_data_cleaning.R R/02_table1.R R/03_figure1.R data/diabetes_012_health_indicators_BRFSS2015.csv
	Rscript -e "rmarkdown::render('diabetes_project.Rmd', output_format = 'pdf_document')"

clean:
	rm -f diabetes_project.pdf