## Import Data ##

# Packages
library(tidyverse)

df <- read_csv("dataraw/correspondence-data-1585.csv")
glimpse(df)
nrow(df)
ncol(df)
summary(df)
