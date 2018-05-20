kmeans <- kmeans(X, 2)
aggregate(X,by=list(fit$cluster),FUN=mean)
mydata <- data.frame(X, fit$cluster)
library(cluster)
clusplot(X,
         kmeans$cluster,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Cluster'),
         xlab = "X1",
         ylab="Level")


d <- dist(X, method = "euclidean")
hc <- hclust(d, method="ward.D") 
plot(hc)
groups <- cutree(hc, k=2)
rect.hclust(hc, k=2, border="red")

library(pvclust)
fit <- pvclust(X, method.hclust="ward.D",method.dist="euclidean")
plot(fit) 
pvrect(fit, alpha=.95) 

library(mclust)
fit <- Mclust(X)
plot(fit)
summary(fit)


library(dbscan)
X_matrix <- as.matrix(X[, -26])
kNNdistplot(X_matrix, k=4)
abline(h=0.4, col="red")

set.seed(1234)
db = dbscan(X_matrix, 0.4, 4)
db 

hullplot(X_matrix, db$cluster)
