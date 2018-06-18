data_list=list(my_data$clara_1,my_data$clara_2,my_data$hc_1,my_data$hc_2,
            my_data$kmeans_1,my_data$kmeans_2,my_data$pam_1,my_data$pam_2)

fit.rlm=list()
fit.rlm=lapply(data_list, clust_rf)
