rf3 <- function(x,y){
  bestresults1 <- resamples(list(RLM1=x,RLM2=y))
  summary(bestresults1) 
} 

rf3(fit.rlm1,fit.rlm2)
rf3(fit.rlm3,fit.rlm4)
rf3(fit.rlm5,fit.rlm6)
rf3(fit.rlm7,fit.rlm8)

rf3(fit.lars1,fit.lars2)
rf3(fit.lars3,fit.lars4)
rf3(fit.lars5,fit.lars6)
rf3(fit.lars7,fit.lars8)