library(rio)
my_data <- import_list(dir(Incoming, pattern = ".csv"))

#temp = list.files(pattern="*.csv")
#myfiles = lapply(temp, read.csv) 

original_data=my_data$depression[2:30]
original_data$Gender=factor(original_data$Gender,labels = c(0,1))

mixed_data=my_data$depressiondummy[2:30]
mixed_data$Gender=factor(mixed_data$Gender,labels = c(0,1))

external_data=my_data$externaldata[2:30]
external_data$Gender=factor(external_data$Gender,labels = c(0,1))