source('Dataset.R')

source('Control.R')

#LM
set.seed(7)
fit.lm<- train(Level~., data=dataset2, method="lm", trControl=control)
set.seed(7)
fit.lmStepAIC<- train(Level~., data=dataset2, method="lmStepAIC", trControl=control)

# CART
set.seed(7)
fit.cart <- train(Level~., data=dataset2, method="rpart", trControl=control)
set.seed(7)
fit.cart1SE<- train(Level~., data=dataset2, method="rpart1SE", trControl=control)
set.seed(7)
fit.cart2<- train(Level~., data=dataset2, method="rpart2", trControl=control)

# SVM
set.seed(7)
fit.svmlinear <- train(Level~., data=dataset2, method="svmLinear", trControl=control)
set.seed(7)
fit.svmlinear2 <- train(Level~., data=dataset2, method="svmLinear2", trControl=control)
set.seed(7)
fit.svmlinear3<- train(Level~., data=dataset2, method="svmLinear3", trControl=control)
set.seed(7)
fit.svmRadial <- train(Level~., data=dataset2, method="svmRadial", trControl=control)
set.seed(7)
fit.svmRadialCost <- train(Level~., data=dataset2, method="svmRadialCost", trControl=control)

# kNN
set.seed(7)
fit.knn <- train(Level~., data=dataset2, method="knn", trControl=control)
set.seed(7)
fit.kknn<- train(Level~., data=dataset2, method="kknn", trControl=control)

# Bayesglm
set.seed(7)
fit.bayesglm<- train(Level~., data=dataset2, method="bayesglm", trControl=control)

#glmboost
set.seed(7)
fit.glmboost<- train(Level~., data=dataset2, method="glmboost", trControl=control)

#ctree
set.seed(7)
fit.ctree<- train(Level~., data=dataset2, method="ctree", trControl=control)
set.seed(7)
fit.ctree2<- train(Level~., data=dataset2, method="ctree2", trControl=control)

set.seed(7)
fit.enet<- train(Level~., data=dataset2, method="enet", trControl=control)

#Gaussain
set.seed(7)
fit.gaussprLinear<- train(Level~., data=dataset2, method="gaussprLinear", trControl=control)
set.seed(7)
fit.gaussprRadial<- train(Level~., data=dataset2, method="gaussprRadial", trControl=control) 

#GAM
set.seed(7)
fit.gam<- train(Level~., data=dataset2, method="gam", trControl=control) 

#GLM
set.seed(7)
fit.glm<- train(Level~., data=dataset2, method="glm", trControl=control)
set.seed(7)
fit.glmStepAIC<- train(Level~., data=dataset2, method="glmStepAIC", trControl=control) 
set.seed(7)
fit.glmnet<- train(Level~., data=dataset2, method="glmnet", trControl=control)

#ICR
set.seed(7)
fit.icr<- train(Level~., data=dataset2, method="icr", trControl=control)

#LARS
set.seed(7)
fit.lars<- train(Level~., data=dataset2, method="lars", trControl=control)

#LEAP
set.seed(7)
fit.leapbw<- train(Level~., data=dataset2, method="leapBackward", trControl=control)
set.seed(7)
fit.leapForward<- train(Level~., data=dataset2, method="leapForward", trControl=control)
set.seed(7)
fit.leapSeq<- train(Level~., data=dataset2, method="leapSeq", trControl=control)


set.seed(7)
fit.ridge<- train(Level~., data=dataset2, method="ridge", trControl=control)
set.seed(7)
fit.foba<- train(Level~., data=dataset2, method="foba", trControl=control)
set.seed(7)
fit.pcr<- train(Level~., data=dataset2, method="pcr", trControl=control)
set.seed(7)
fit.ppr<- train(Level~., data=dataset2, method="ppr", trControl=control)

set.seed(7)
fit.penalized<- train(Level~., data=dataset2, method="penalized", trControl=control)

set.seed(7)
fit.pls<- train(Level~., data=dataset2, method="pls", trControl=control)
set.seed(7)
fit.simpls<- train(Level~., data=dataset2, method="simpls", trControl=control)
set.seed(7)
fit.kernelpls<- train(Level~., data=dataset2, method="kernelpls", trControl=control)

set.seed(7)
fit.rlm<- train(Level~., data=dataset2, method="rlm", trControl=control)

set.seed(7)
fit.superpc<- train(Level~., data=dataset2, method="superpc", trControl=control)