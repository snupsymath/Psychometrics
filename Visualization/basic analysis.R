library(blavaan)
library(haven)
library(tidyverse)
library(qgraph)

#setwd("C:/Users/wondo/OneDrive/Desktop/Psychometrics-master/Psychometrics/Visualization")
rawdata <- read.csv("data.csv")
data2 <- rawdata %>%  dplyr::select("a1":"스토르게")

data2 <- data2 %>%
  dplyr::select(-c('역a3', '역a12', '역b20', '역e31'))
colnames(data2)
data2 <- data2[, 1:35]
data2 = data2 -3

# A: 1:13, 48, 49, 52 
# B: 14:21, 50, 53 
# D : 22:28, 54
# E : 29:35, 51, 55
# L1~L4 : 36~39
# E1~E4 : 40~43
# S1~S4 : 44~47
# 유희적 태도 : 56
# 루두스 : 57
# 에로스 : 58
# 스토르게 : 59


# Rough Visualization
GROUP = list('a' = c(1:13),
             'b' = c(14:21),
             'd' = c(22:28),
             'e' = c(29:35))
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






model1 <- '
# latent variable definitions
A =~ a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9 + a10 + a11 + a12 + a13
B =~ b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21
D =~ d22 + d23 + d24 + d25 + d26 + d27 + d28
E =~ e29 + e30 + e31 + e32 + e33 + e34 + e35
'

fit <- bcfa(model1, data = data2, n.chains = 1)
fit2 <- bcfa(model1, data = data2, n.chains = 1, save.lvs = TRUE)
fit3 <- blavaan(model1, data = data2, n.chains = 1)
summary(fit)
summary(fit)
# 
predict(fit)
lavPredict(fit)
predict(fit2)
lavPredict(fit2)

## qgraph, semPlot::semPaths 등을 이용해 visualize 하려고 했는데 안됨
## bcfa 로 semPath 쓰려고 할때는 lavaan object가 아니라고 나옴
## blavaan 함수를 사용했을때는 data가 positive definite이 아니라 분석을 못한다고 나옴.


