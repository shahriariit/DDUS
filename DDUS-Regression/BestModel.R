source('Dataset.R')

source('Control.R')

rf <- function(x){
  set.seed(7)
  return(train(Level~., data=dataset3, method=x, trControl=control)) 
} 

fit.lm <- rf("lm") 
fit.lmStepAIC<- rf("lmStepAIC") 

#GLM
fit.glm<- rf("glm")
fit.glmStepAIC<- rf("glmStepAIC") 
fit.bayesglm<- rf("bayesglm")

#enet
fit.enet<- rf("enet")

#GAM
fit.gam<- rf("gam")

#LARS
fit.lars<- rf("lars")

#RIDGE
fit.ridge<- rf("ridge")

#PPR
fit.ppr<- rf("ppr")

#RLM
fit.rlm<- rf("rlm")