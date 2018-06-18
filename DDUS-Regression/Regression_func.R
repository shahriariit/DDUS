library(caret)

#Encoding Technique
factor_func_dept=function(x){
  x$Department=factor(x$Department,labels=c(1:24))
}

factor_func_gender=function(x){
  x$Gender=factor(x$Gender,labels = c(0,1))
}


# prepare training scheme
control <- trainControl(method="repeatedcv", number=10, repeats=10)

# Regression for original, mixed, external data

rf_or <- function(x){
  set.seed(7)
  train(Level~., data=original_data, method=x, trControl=control) 
} 

rf_mx <- function(x){
  set.seed(7)
  train(Level~., data=mixed_data, method=x, trControl=control) 
}

rf_ex <- function(x){
  set.seed(7)
  train(Level~., data=external_data, method=x, trControl=control) 
}


# Best Result Analysis

bestresult <- function(x,y){
  temp_reg=resamples(list(LM=x[[1]], GLM=x[[2]], BAYESGLM=x[[3]], ENET=x[[4]],
                          GAM=x[[5]],LARS=x[[6]],PPR=x[[7]], RIDGE=x[[8]], RLM=x[[9]]))

  write(capture.output(summary(temp_reg)),file =sprintf("%s%s",Outgoing,y) )
}

#Output Visulization

plot_reg_box <- function(x,y){
  temp_reg=resamples(list(LM=x[[1]], GLM=x[[2]], BAYESGLM=x[[3]], ENET=x[[4]],
                          GAM=x[[5]],LARS=x[[6]],PPR=x[[7]], RIDGE=x[[8]], RLM=x[[9]]))
  
  jpeg(file=sprintf("%sboxplot%s.jpg",plotway,y), width = 800, height = 590, units = "px")
  bwplot(temp_reg)
}


plot_reg_dot <- function(x,y){
  temp_reg=resamples(list(LM=x[[1]], GLM=x[[2]], BAYESGLM=x[[3]], ENET=x[[4]],
                          GAM=x[[5]],LARS=x[[6]],PPR=x[[7]], RIDGE=x[[8]], RLM=x[[9]]))
  
  jpeg(file=sprintf("%sdotplot%s.jpg",plotway,y), width = 800, height = 590, units = "px")
  dotplot(temp_reg)
}
