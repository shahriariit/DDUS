X=dataset2[4:28]

set.seed(6)
wcss <- vector()
for (i in 1:8) {
  wcss[i]<-sum(kmeans(X,i)$withinss) 
}
plot(1:8,wcss,type = "b",main = paste("Cluster of Client"),xlab = "Number of Cluster",ylab="WCSS")

library(tidyverse)  
library(cluster)  
library(factoextra) 
library(NbClust)

fviz_nbclust(X, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)+
  labs(subtitle = "Elbow method")

fviz_nbclust(X, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

fviz_nbclust(X, pam, method = "silhouette")+labs(subtitle = "Silhouette method")

set.seed(123)
fviz_nbclust(X, kmeans, nstart = 25, method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method") 

library("NbClust")
nb <- NbClust(X, distance = "euclidean", min.nc = 2,
              max.nc = 10, method = "kmeans") 
library("factoextra")
fviz_nbclust(nb) 


library(clValid)
clmethods <- c("hierarchical","kmeans","pam")
intern <- clValid(X, nClust = 2:6, clMethods = clmethods, validation = "internal")
summary(intern)