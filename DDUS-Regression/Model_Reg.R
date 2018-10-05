#reg=c("lm","glm","bayesglm","enet","gam","lars","ridge","ppr","rlm")
reg=c("lm","enet","lars","rlm")

reg_lt_or=list()
reg_lt_or=lapply(reg,rf_or)

reg_lt_dd=list()
reg_lt_dd=lapply(reg,rf_dd)

reg_lt_ex=list()
reg_lt_ex=lapply(reg,rf_ex)

reg_lt_mx=list()
reg_lt_mx=lapply(reg,rf_mx)

reg_lt_ded=list()
reg_lt_ded=lapply(reg,rf_ded)

reg_lt_edd=list()
reg_lt_edd=lapply(reg,rf_edd)

reg_lt_deddd=list()
reg_lt_deddd=lapply(reg,rf_deddd)

                    