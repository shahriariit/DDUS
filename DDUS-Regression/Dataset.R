library(rio)
my_data <- import_list(dir(Incoming, pattern = ".csv"))

#temp = list.files(pattern="*.csv")
#myfiles = lapply(temp, read.csv) 

original_data=my_data$depression[2:30]
original_data$Gender=factor(original_data$Gender,labels = c(0,1))

external_data=my_data$externaldata[2:30]
external_data$Gender=factor(external_data$Gender,labels = c(0,1))

dummy_data=my_data$dummy[2:30]
dummy_data$Gender=factor(dummy_data$Gender,labels = c(0,1))

mixed_data=my_data$depressiondummy[2:30]
mixed_data$Gender=factor(mixed_data$Gender,labels = c(0,1))

depression_ed=my_data$depressioned[2:30]
depression_ed$Gender=factor(depression_ed$Gender,labels = c(0,1))

externaldata_dd=my_data$externaldatadummy[2:30]
externaldata_dd$Gender=factor(externaldata_dd$Gender,labels = c(0,1))

original_external_dd=my_data$depressioneddd[2:30]
original_external_dd$Gender=factor(original_external_dd$Gender,labels = c(0,1))


