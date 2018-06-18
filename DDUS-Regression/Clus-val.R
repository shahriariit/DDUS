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

stab  <- clValid(df, nClust = 2:6, clMethods = clmethods, maxitems = 1200, validation = "stability")
optimalScores(stab)

