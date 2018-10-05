depression_ed <- read.csv(file="depressioned.csv", header=TRUE, sep=",")

source('Control.R')

rf<- function(x){
  set.seed(7)
  return(train(Level~., data=original_data, method=x, trControl=control)) 
} 


rf_ded<- function(x){
  set.seed(7)
  return(train(Level~., data=depression_ed, method=x, trControl=control)) 
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


#fit.lars_o<- rf("glmnet")

#RIDGE
#fit.ridge_o<- rf("glmnet")


#RLM
fit.rlm_o<- rf("rlm")



fit.lm_ded <- rf("lm") 
fit.enet_ded<- rf("enet")
fit.lars_ded<- rf("lars")
fit.ridge_ded<- rf("ridge")
fit.rlm_ded<- rf("rlm")