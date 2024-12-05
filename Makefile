.PHONY: clean
.PHONY: init

init:
	mkdir -p derived_data
	mkdir -p figures

clean:
	rm -rf derived_data
	rm -rf figures
	mkdir -p derived_data
	mkdir -p figures

#To get the data into R studio
derived_data/data.csv: data.R source_data/mental_health_and_technology_usage_2024.csv utility.R
	Rscript data.R

#These density curves to show the distribution of the data.
figures/sm_density.png: figure_sm_density.R derived_data/data.csv
	Rscript figure_sm_density.R

figures/tech_hours_density.png: figure_tech_hours_density.R derived_data/data.csv
	Rscript figure_tech_hours_density.R

#The histogram helps displays the frequency of different total gaming hours
figures/gaming_hist.png: figure_gaming_hist.R derived_data/data.csv
	Rscript figure_gaming_hist.R 

#The boxplot shows the technology usage hours across mental health status groups.
#For comparison, another boxplot was made to show social media usage hours across diffrent stress level groups.
figures/Tech_boxplot.png: figure_tech_boxplot.R derived_data/data.csv
	Rscript figure_tech_boxplot.R

figures/SM_boxplot.png: figure_sm_boxplot.R derived_data/data.csv
	Rscript figure_sm_boxplot.R

#Build the final report for the project
report.pdf: report.Rmd figures/sm_density.png figures/tech_hours_density.png figures/gaming_hist.png figures/Tech_boxplot.png figures/SM_boxplot.png 
	Rscript -e "rmarkdown::render('report.Rmd', output_format = 'pdf_document')"
