X=dataset2[4:29]

#KMeans
km <- kmeans(X, 2, nstart = 25)
mydata <- data.frame(X, km$cluster)
write.csv(mydata, file="kmeans_file.csv")
library(cluster)
clusplot(X,
         km$cluster,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Cluster'),
         xlab = "X1",
         ylab="Level")

#PAM
library(cluster)
library(factoextra)
fviz_nbclust(X, pam, method = "silhouette")+ theme_classic()
pam.res <- pam(X, 2, metric = "euclidean", stand = FALSE)
pam1 <- data.frame(X, pam.res$clustering)
write.csv(pam1, file="pam_file.csv")
print(pam.res)
clusplot(X,
         pam.res$clustering,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Cluster'),
         xlab = "X1",
         ylab="Level")

#CLARA

fviz_nbclust(X, clara, method = "silhouette")+theme_classic()
clara.res <- clara(X, 2, metric = "euclidean", stand = FALSE, samples = 5, pamLike = FALSE)
clara1 <- data.frame(X, clara.res$clustering)
write.csv(clara1, file="clara_file.csv")

#Hierarchical Clustering
d <- dist(X, method = "euclidean")
hc <- hclust(d, method="ward.D2")
fviz_dend(hc, cex = 0.5)
plot(hc)
hcs <- cutree(hc, k=2)
hcs
hc1 <- data.frame(X, hcs)
write.csv(hc1, file="hc_file.csv")
rect.hclust(hc, k=2, border="red")