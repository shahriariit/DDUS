library(factoextra)
library(fpc)
library(NbClust)
library(clValid)

df <- original_data[, -29]
df <- df[4:28]

#clmethods <- c("hierarchical", "kmeans", "diana", "fanny", "som", "model", "sota", "pam", "clara","agnes")

clmethods <- c("hierarchical", "kmeans", "pam", "clara")

intern <- clValid(df, nClust = 2:6, clMethods = clmethods, maxitems = 1200, validation = "internal")
summary(intern)
plot(intern)

stab  <- clValid(df, nClust = 2:6, clMethods = clmethods, maxitems = 1200, validation = "stability")
optimalScores(stab)
plot(stab)

setwd("~/DDUS/DDUS-Regression")
hc1=read.csv('hc_1.csv')
hc2=read.csv('hc_2.csv')

Y_hc1_lm=lm(hc1$Level~.,data=hc1)
Y_hc2_lm=lm(hc2$Level~.,data=hc2)

summary(Y_hc1_lm)
summary(Y_hc2_lm)

library(ridge)
Y_hc1_ridge <- linearRidge(hc1$Level~.,data=hc1)
Y_hc2_ridge <- linearRidge(hc2$Level~.,data=hc2)

library(MASS)
Y_hc1_rlm=rlm(hc1$Level~.,data=hc1)
Y_hc2_rlm=rlm(hc2$Level~.,data=hc2)

summary(Y_hc1_rlm)
summary(Y_hc2_rlm)




