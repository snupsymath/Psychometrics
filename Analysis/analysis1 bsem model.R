# Model Generator
# Only run every once in a while

library(blavaan)
library(tidyverse)

setwd("C:/Users/wondo/OneDrive/Desktop/Psychometrics-master/Psychometrics/Visualization")
rawdata <- read.csv("data.csv")
data2 <- rawdata %>%  dplyr::select("a1":"스토르게")
data2 <- data2 %>%dplyr::select(-c('역a3', '역a12', '역b20', '역e31'))
data2 <- data2[, 1:35]
data2 <- c(
  "a1",  "a2",  "a3",  "a4",  "a5",  "a6",  "a7",  "a8",  "a9",  "a10", "a11", "a12", "a13", 
  "b14", "b15", "b16", "b17", "b18", "b19", "b20", "b21", 
  "d22", "d23", "d24", "d25", "d26", "d27", "d28", 
  "e29", "e30", "e31", "e32", "e33", "e34", "e35")
data2 = data2 -3
data2


# A: 1:13, (48), (49), (52)  # B: 14:21, 50, 53  # D : 22:28, 54 # E : 29:35, 51, 55
model1 <- '
# latent variable definitions
A =~ a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9 + a10 + a11 + a12 + a13
B =~ b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21
D =~ d22 + d23 + d24 + d25 + d26 + d27 + d28
E =~ e29 + e30 + e31 + e32 + e33 + e34 + e35
'

fit <- bcfa(model1, data = data2, n.chains = 1)
summary(fit)
lavPredict(fit)

fit



