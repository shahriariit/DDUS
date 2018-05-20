X=dataset2[4:28]


library(tidyverse)  
library(cluster)  
library(factoextra) 


set.seed(6)
wcss <- vector()
for (i in 1:10) {
  wcss[i]<-sum(kmeans(X,i)$withinss) 
}
plot(1:10,wcss,type = "b",main = paste("Cluster of Client"),xlab = "Number of Cluster",ylab="WCSS")


set.seed(123)
fviz_nbclust(X, kmeans, method = "wss")