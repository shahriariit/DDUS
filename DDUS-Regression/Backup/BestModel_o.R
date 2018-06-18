source('Dataset.R')

source('Control.R')

rf_o <- function(x){
  set.seed(7)
  return(train(Level~., data=orginaldataset, method=x, trControl=control)) 
} 


fit.lm_o <- rf("lm") 
fit.lmStepAIC_o<- rf("lmStepAIC") 

#GLM
fit.glm_o<- rf("glm")
fit.glmStepAIC_o<- rf("glmStepAIC") 
fit.bayesglm_o<- rf("bayesglm")

#enet
fit.enet_o<- rf("enet")

#GAM
fit.gam_o<- rf("gam")

#LARS
fit.lars_o<- rf("lars")

#RIDGE
fit.ridge_o<- rf("ridge")

#PPR
fit.ppr_o<- rf("ppr")

#RLM
fit.rlm_o<- rf("rlm")