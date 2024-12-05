library(tidyverse)
library(ggplot2)
source("data.R")

tech_hours_density<-ggplot(data, aes(Technology_Usage_Hours)) +
  geom_density() +
  labs(title = "Distribution of Technology Usage Hours",
       x= "Technology Usage Hours", y="Density")
plot(tech_hours_density)
ensure_directory("figures")
ggsave("~/project/figures/tech_hours_density.png")
