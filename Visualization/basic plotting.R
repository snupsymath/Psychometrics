library(haven)
library(tidyverse)
library(qgraph)

# setwd("C:/Users/wondo/OneDrive/Desktop/Psychometrics-master/Data")
rawdata <- read.csv("C:/Users/wondo/OneDrive/Desktop/Psychometrics-master/Data/data.csv")

data2 <- rawdata %>%  select("a1":"스토르게")

colnames(data2)
# A: 1:13, 52,53, 56 
# B: 14:21, 54, 57 
# D : 22:28, 58
# E : 29:35, 55, 59
# L1~L4 : 40~43
# E1~E4 : 44~47
# S1~S4 : 48~51
# 유희적 태도 : 60
# 루두스 : 61
# 에로스 : 62
# 스토르게 : 63
GROUP = list('a' = c(1:15, 52, 53, 56),
     'b' = c(16:24, 54, 57),
     'd' = c(25:31, 58),
     'e' = c(32:39, 55, 59),
     'ludus' = c(40:43, 61),
     "eros" = c(44:47, 62),
     "stroge" = c(48:51, 63),
     "U" = 60)
qgraph(cor(data2), groups = GROUP)
qgraph(cor(data2), groups = GROUP, layout = 'spring')

data2_zeroorder = cor(data2)
library(smacof)
dissimilarity_data2 <- sim2diss(data2_zeroorder)
data2_MDS <- mds(dissimilarity_data2)
data2_MDS_mspline <- mds(dissimilarity_data2,
                         type = "mspline")

# Visualize
qgraph(data2_zeroorder,
       layout = data2_MDS_mspline$conf,
       groups = GROUP)
