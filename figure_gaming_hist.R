library(tidyverse)
library(ggplot2)
source("data.R")

gaming_hist <-ggplot(data, aes(Gaming_Hours)) + geom_histogram(bins=24) + 
  labs(title="Frequency of Gaming Hours", x="Gaming Hours", y="Count")
plot(gaming_hist)
ensure_directory("figures")
ggsave("~/project/bios611/figures/gaming_hist.png")
