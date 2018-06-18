# collect resamples
results <- resamples(list(BayesGlm=fit.bayesglm, CART=fit.cart, CART1=fit.cart1SE, 
                          CART2=fit.cart2, Ctree1=fit.ctree, Ctree2=fit.ctree2, 
                          ENET=fit.enet, FOBA=fit.foba, GAM=fit.gam, GLM1=fit.glm, 
                          GLM2=fit.glmboost, GLM3=fit.glmnet, GLM4=fit.glmStepAIC, 
                          ICR=fit.icr, KrnlPLS=fit.kernelpls, KNN=fit.knn, KKNN=fit.kknn, 
                          LARS=fit.lars, LEAP1=fit.leapbw, LEAP2=fit.leapForward, 
                          LEAP3=fit.leapSeq, LM1=fit.lm, LM2=fit.lmStepAIC, PCR=fit.pcr, 
                          PPR=fit.ppr, RIDGE=fit.ridge, RLM=fit.rlm, 
                          PLS=fit.pls,KERPLS=fit.kernelpls,SIMPLS=fit.simpls,SUPERPC=fit.superpc, SVM=fit.svmlinear,
                          SVM2=fit.svmlinear2, SVM3=fit.svmlinear3, SVM4=fit.svmRadial))
summary(results)


bestresults <- resamples(list(LM=fit.lm, LMSTEPAIC=fit.lmStepAIC,GLM=fit.glm, GLMSTEPAIC=fit.glmStepAIC,
                              BAYESGLM=fit.bayesglm,ENET=fit.enet, GAM=fit.gam,LARS=fit.lars,PPR=fit.ppr, 
                              RIDGE=fit.ridge, RLM=fit.rlm))
summary(bestresults)