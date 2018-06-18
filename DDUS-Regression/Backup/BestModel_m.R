source('Dataset.R')

source('Control.R')

rf_m <- function(x){
  set.seed(7)
  return(train(Level~., data=dataset4, method=x, trControl=control)) 
} 

#p=c("lm","glm","rlm")

#al=list()
#al=lapply(p,rf)


fit.lm_m <- rf("lm") 
fit.lmStepAIC_m<- rf("lmStepAIC") 

#GLM
fit.glm_m<- rf("glm")
fit.glmStepAIC_m<- rf("glmStepAIC") 
fit.bayesglm_m<- rf("bayesglm")

#enet
fit.enet_m<- rf("enet")

#GAM
fit.gam_m<- rf("gam")

#LARS
fit.lars_m<- rf("lars")

#RIDGE
fit.ridge_m<- rf("ridge")

#PPR
fit.ppr_m<- rf("ppr")

#RLM
fit.rlm_m<- rf("rlm")