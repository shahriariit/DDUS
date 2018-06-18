source('Dataset.R')

source('Control.R')

rf <- function(x,y){
  set.seed(7)
  return(train(Level~., data=x, method=y, trControl=control)) 
} 

#reg=c("lm","glm","bayesglm","enet","gam","lars","ridge","ppr","rlm")

#reg_lt=list()
#reg_lt=lapply(reg,rf)


fit.lm_e <- rf("lm") 
fit.lmStepAIC_e<- rf("lmStepAIC") 

#GLM
fit.glm_e<- rf("glm")
fit.glmStepAIC_e<- rf("glmStepAIC") 
fit.bayesglm_e<- rf("bayesglm")

#enet
fit.enet_e<- rf("enet")

#GAM
fit.gam_e<- rf("gam")

#LARS
fit.lars_e<- rf("lars")

#RIDGE
fit.ridge_e<- rf("ridge")

#PPR
fit.ppr_e<- rf("ppr")

#RLM
fit.rlm_e<- rf("rlm")