library(tidyverse)
library(ggplot2)
source("data.R")

Tech_boxplot<-ggplot(data, aes(x=Mental_Health_Status, y=Technology_Usage_Hours)) + geom_boxplot() +
  labs(title = "Mental Health Status vs. Technology Use Hours",
       x= "Mental Health Status", y="Technology usage hours")
plot(Tech_boxplot)
ensure_directory("figures")
ggsave("~/project/figures/Tech_boxplot.png")
