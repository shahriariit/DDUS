X=original_data 

#KMeans
km <- kmeans(X, 2, nstart = 25)
clsg(X,km$cluster,"kmeans")
clp(X,km$cluster,"kmeans")
clus_split('kmeans_file.csv',y,"kmeans")


#PAM
pam.res <- pam(X, 2, metric = "euclidean", stand = FALSE)
clsg(X,pam.res$clustering,"pam")
clp(X,pam.res$clustering,"pam")
clus_split('pam_file.csv',y,"pam")

#CLARA
clara.res <- clara(X, 2, metric = "euclidean", stand = FALSE)
clsg(X,clara.res$clustering,"clara")
clp(X,clara.res$clustering,"clara")
clus_split('clara_file.csv',y,"clara")


#Hierarchical Clustering
d <- dist(X, method = "euclidean")
hc <- hclust(d, method="ward.D2")
fviz_dend(hc, cex = 0.5)
hcs <- cutree(hc, k=2)
clsg(X,hcs,"hc")
clus_split('hc_file.csv',y,"hc")