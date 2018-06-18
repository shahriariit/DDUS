library(tidyverse)  
library(cluster)  
library(factoextra) 
library(NbClust)
library(clValid)
library(caTools)

# Number of Cluster Anaysis

neclust <- function(k){
  fviz_nbclust(X, k, method = "wss") +
    geom_vline(xintercept = 4, linetype = 2)+
    labs(subtitle = "Elbow method")
}

nsilclust <- function(k){
  fviz_nbclust(X, k, method = "silhouette")+
    labs(subtitle = "Silhouette method")
}

ngsclust <- function(k){
  set.seed(123)
  fviz_nbclust(X, k, nstart = 25, method = "gap_stat", nboot = 50)+
    labs(subtitle = "Gap statistic method") 
  
}

nnbclust <- function(k){
  nb <- NbClust(X, distance = "euclidean", min.nc = 2, max.nc = 10, method = k) 
  fviz_nbclust(nb)
}

nnclclust <- function(k){
  v <- clValid(X,2:6, clMethods = k, validation = "internal",maxitems=nrow(X))
  summary(v)
}

# Clustering Techniques

clp <-function(x,y,cl){
  clusplot(x,
           y,
           lines = 0,
           shade = TRUE,
           color = TRUE,
           labels = 2,
           plotchar = FALSE,
           span = TRUE,
           main = sprintf("%s-Cluster", cl),
           xlab = "X1",
           ylab="Level")
}

clsg <- function(x,y,cl){
  temp_data <- data.frame(x,y)
  write.csv(temp_data, file=sprintf("%s%s_file.csv",Incoming,cl))
}

fviz_func <- function(Y){
  fviz_nbclust(X,Y, method = "silhouette")+theme_classic()
}

clus_split <- function(x,y,cl){
  x_temp =read.csv(sprintf("%s%s",Incoming,x))
  write.csv(x_temp[which(x_temp$y==1),], file=sprintf("%s%s_1.csv",Incoming, cl))
  write.csv(x_temp[which(x_temp$y==2),], file=sprintf("%s%s_2.csv",Incoming, cl))
}

clust_rf <- function(x){
  set.seed(7)
  return(train(Level~., data=x, method="rlm", trControl=control)) 
} 

clust_com <- function(x,y,z){
  temp_res <- resamples(list(Cluster1=x,Cluster2=y))
  write(capture.output(summary(temp_res)),file =sprintf("%s%s",Outgoing,z) )
} 
