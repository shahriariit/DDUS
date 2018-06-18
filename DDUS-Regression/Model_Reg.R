reg=c("lm","glm","bayesglm","enet","gam","lars","ridge","ppr","rlm")

reg_lt_or=list()
reg_lt_or=lapply(reg,rf_or)

reg_lt_mx=list()
reg_lt_mx=lapply(reg,rf_mx)

reg_lt_ex=list()
reg_lt_ex=lapply(reg,rf_ex)
