clus_grp <- function(x){
  set.seed(7)
  return(train(Level~., data=dhc1, method=x, trControl=control)) 
} 

m1=clus_grp('enet')
m2=clus_grp('lars')
m3=clus_grp('rlm')

br=resamples(list(ENET=m1,LARS=m2,RLM=m3))
summary(br)
modelCor(br)

clus_grp_1 <- function(x){
  set.seed(7)
  return(train(Level~., data=dhc2, method=x, trControl=control)) 
}

n1=clus_grp_1('enet')
n2=clus_grp_1('lars')
n3=clus_grp_1('rlm')

br1=resamples(list(ENET=n1,LARS=n2,RLM=n3))
summary(br1)
modelCor(br1)

