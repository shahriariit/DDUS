dhc1=read.csv('hc_1.csv')
dhc2=read.csv('hc_2.csv')

algorithmList <- c('enet', 'lars', 'rlm')
set.seed(123)

splom(results,metric = "MAE")

clus_model <- function(x){
  models <- train(Level~., data=x, trControl=control, methodList=algorithmList)
  results <- resamples(models)
  return(modelCor(results))
}

library(caretEnsemble)
resultclus1<-clus_model(dhc1)
resultclus2<-clus_model(dhc2)

summary(resultclus1)
summary(resultclus2)

clus_corr <- function(x){
  corrplot::corrplot(x, method="color", col=col(200), order="hclust", 
                     addCoef.col = "black", # Add coefficient of correlation
                     tl.col="black", tl.srt=45, #Text label color and rotation
                     # Combine with significance
                     p.mat = p.mat, sig.level = 0.01, insig = "blank", 
                     # hide correlation coefficient on the principal diagonal
                     diag=TRUE 
  )

}


clus_corr(resultclus1)


clus_corr(resultclus1)
clus_corr(resultclus2)

