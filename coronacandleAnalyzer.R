library(ggplot2)
library(tidyverse)
library(magrittr)
library(dplyr)

ycreviews <- read.table("amazonspider/result.csv", header=TRUE, sep=",")

#summary(ycreviews)

actrevs <- ycreviews %>% filter(year > 2016)

source("params.R")


months<-c(jan,feb,mar,apr,may,jun,jul,aug,sep,okt,nov)

plot(months,means20, col="red")
par(new = TRUE)
plot(months,means19)
par(new = TRUE)
plot(months,means18)
 par(new = TRUE)
 plot(months,means17)
print(length(months))

