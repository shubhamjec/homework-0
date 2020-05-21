library(tidyverse)
murders <- read_csv("data/murders.csv")
head(murders)
murders <- murders %>% mutate(region = factor(region), rate = total / population * 10^5)
head(murders)
save(murders, file = "rda/murders.rda") #saves object to rda files
