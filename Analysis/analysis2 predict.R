# Single New DATA
SINGLENEWDATA = sample(c(1,2,3,4,5),35, replace = TRUE)
SINGLENEWDATA
SINGLEDATA = as.data.frame(SINGLENEWDATA)
colnames(SINGLENEWDATA) = c("a1",  "a2",  "a3",  "a4",  "a5",  "a6",  "a7",  "a8",  "a9",  "a10", "a11", "a12", "a13", "b14", "b15", "b16", "b17", "b18", "b19", "b20", "b21", "d22", "d23", "d24", "d25", "d26", "d27", "d28", "e29", "e30", "e31", "e32", "e33", "e34", "e35")
SINGLENEWDATA = SINGLENEWDATA - 3
SINGLENEWDATA
AUGMENTDATA = rbind(data2, SINGLENEWDATA)
predict(fit, newdata = SINGLEDATA)
predict(fit, newdata = AUGMENTDATA)[209,]
summary(fit)

# Multiple New DATA
rbind(rep(-2, 35), rep(-1, 35), rep(0, 35), rep(1, 35), rep(2, 35))

NEWDATA1 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA2 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA3 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA4 = sample(c(1,2,3,4,5),35, replace = TRUE)
NEWDATA5 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA6 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA7 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA8 = sample(c(1,2,3,4,5),35, replace = TRUE)
NEWDATA9 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA10 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA11 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA12 = sample(c(1,2,3,4,5),35, replace = TRUE)
NEWDATA13 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA14 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA15 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA16 = sample(c(1,2,3,4,5),35, replace = TRUE) ; NEWDATA17 = sample(c(1,2,3,4,5),35, replace = TRUE)
NEWDATA18 = sample(c(1,2,3,4,5),35, replace = TRUE)

NEWDATA = rbind(NEWDATA1, NEWDATA2, NEWDATA3, NEWDATA4)


NEWDATA = rbind(NEWDATA1, NEWDATA2, NEWDATA3, NEWDATA4, NEWDATA5, NEWDATA6,
                NEWDATA7, NEWDATA8, NEWDATA9, NEWDATA10, NEWDATA11, NEWDATA12,
                NEWDATA13, NEWDATA14, NEWDATA15, NEWDATA16, NEWDATA17, NEWDATA18)

NEWDATA <- as.data.frame(NEWDATA)
colnames(NEWDATA) = c("a1",  "a2",  "a3",  "a4",  "a5",  "a6",  "a7",  "a8",  "a9",  "a10", "a11", "a12", "a13", "b14", "b15", "b16", "b17", "b18", "b19", "b20", "b21", "d22", "d23", "d24", "d25", "d26", "d27", "d28", "e29", "e30", "e31", "e32", "e33", "e34", "e35")
NEWDATA = NEWDATA - 3
predict(fit, newdata = NEWDATA)


AUGMENTDATA = rbind(data2, NEWDATA)
predict(fit, newdata = AUGMENTDATA)[(208+1):nrow(AUGMENTDATA),]






nrow(rbind(data2, NEWDATA))

#NEWDATA = rbind(NEWDATA1)
NEWDATA

is.data.frame(data2)
is.data.frame(NEWDATA)

# 최소 몇개가 쌓야여지 됨.
AUGMENTDATA = rbind(data2, NEWDATA)
round(predict(fit, newdata = AUGMENTDATA)[209:226,], 5)
predict(fit, newdata = NEWDATA)








