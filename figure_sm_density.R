library(tidyverse)
library(ggplot2)
source("data.R")

sm_density<-ggplot(data, aes(Social_Media_Usage_Hours)) + geom_density() +
  labs(title = "Distribution of Social Media Usage Hours",
       x= "Social Media Usage Hours", y="Density")
plot(sm_density)
ensure_directory("figures")
ggsave("~/project/figures/sm_density.png")

