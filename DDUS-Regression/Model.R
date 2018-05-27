source('Dataset.R')

source('Control.R')

rf <- function(x){
  set.seed(7)
  return(train(Level~., data=dataset3, method=x, trControl=control)) 
}

#lm
fit.lm <- rf("lm") 
fit.lmStepAIC<- rf("lmStepAIC")

# CART
fit.cart <- rf("rpart")
fit.cart1SE<- rf("rpart1SE")
fit.cart2<- rf("rpart2")

# SVM
fit.svmlinear <- rf("svmLinear")
fit.svmlinear2 <- rf("svmLinear2")
fit.svmlinear3<- rf("svmLinear3")
fit.svmRadial <- rf("svmRadial")
fit.svmRadialCost <- rf("svmRadialCost")

# kNN
fit.knn <- rf("knn")
fit.kknn<- rf("kknn")

#ctree
fit.ctree<- rf("ctree")
fit.ctree2<- rf("ctree2")

#enet
fit.enet<- rf("enet")
 
#GAM
fit.gam<- rf("gam") 

#GLM
fit.glm<- rf("glm")
fit.glmStepAIC<- rf("glmStepAIC") 
fit.glmnet<- rf("glmnet")
fit.bayesglm<- rf("bayesglm")
fit.glmboost<- rf("glmboost")

#ICR
fit.icr<- rf("icr")

#LARS
fit.lars<- rf("lars")

#LEAP
fit.leapbw<- rf("leapBackward")
fit.leapForward<- rf("leapForward")
fit.leapSeq<- rf("leapSeq")

#RIDGE
fit.ridge<- rf("ridge")

#FOBA
fit.foba<- rf("foba")

#PCR
fit.pcr<- rf("pcr")

#PPR
fit.ppr<- rf("ppr")

#PENALIZED
fit.penalized<- rf("penalized")

#PLS
fit.pls<- rf("pls")
fit.simpls<- rf("simpls")
fit.kernelpls<- rf("kernelpls")

#RLM
fit.rlm<- rf("rlm")

#SUPERPC
fit.superpc<- rf("superpc")