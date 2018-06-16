library(tidyverse)  
library(cluster)  
library(factoextra) 
library(NbClust)
library(clValid)

X=dataset2[4:28]

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

neclust(kmeans)
neclust(pam)
neclust(clara)
neclust(fanny)
neclust(hcut)

nsilclust(kmeans)
nsilclust(pam)
nsilclust(clara)

ngsclust(kmeans)

nnbclust("kmeans")
nnbclust("ward.D")
nnbclust("ward.D2")
nnbclust("single")
nnbclust("complete")
nnbclust("average")
nnbclust("mcquitty")
nnbclust("median")
nnbclust("centroid")


nnclclust("pam")
nnclclust("clara")
nnclclust("hierarchical")
nnclclust("diana")
nnclclust("fanny")
nnclclust("model")
nnclclust("sota")
nnclclust("agnes")
