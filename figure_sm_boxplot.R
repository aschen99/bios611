library(tidyverse)
library(ggplot2)
source("data.R")

SM_boxplot<-ggplot(data, aes(x=Stress_Level, y=Social_Media_Usage_Hours)) + geom_boxplot() +
  labs(title = "Stress Level vs. Social Media Use Hours",x= "Stress level", y="Social media usage hours")
plot(SM_boxplot)
ensure_directory("figures")
ggsave("~/project/bios611/figures/SM_boxplot.png")
