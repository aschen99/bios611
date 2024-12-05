library(tidyverse)
source("utility.R")
data<-read.csv("~/project/source_data/mental_health_and_technology_usage_2024.csv")

#Check for duplicates and create csv
data %>% group_by(User_ID) %>% tally() %>% filter(n!=1)
ensure_directory("derived_data")
write_csv(data, "derived_data/data.csv")
