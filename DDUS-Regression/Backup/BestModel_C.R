source('Dataset.R')

source('Control.R')

rf2 <- function(x,y){
  set.seed(7)
  return(train(Level~., data=x, method=y, trControl=control)) 
} 

#RLM
fit.rlm1<- rf2(dataset6,"rlm")
fit.rlm2<- rf2(dataset7,"rlm")

fit.rlm3<- rf2(dataset8,"rlm")
fit.rlm4<- rf2(dataset9,"rlm")

fit.rlm5<- rf2(dataset10,"rlm")
fit.rlm6<- rf2(dataset11,"rlm")

fit.rlm7<- rf2(dataset12,"rlm")
fit.rlm8<- rf2(dataset13,"rlm")

#lars
fit.lars1<- rf2(dataset6,"lars")
fit.lars2<- rf2(dataset7,"lars")

fit.lars3<- rf2(dataset8,"lars")
fit.lars4<- rf2(dataset9,"lars")

fit.lars5<- rf2(dataset10,"lars")
fit.lars6<- rf2(dataset11,"lars")

fit.lars7<- rf2(dataset12,"lars")
fit.lars8<- rf2(dataset13,"lars")