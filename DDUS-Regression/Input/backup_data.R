# load the dataset
dataset2=read.csv('depression.csv')
dataset2$Department=factor(dataset2$Department,labels=c(1:24))
dataset2$Gender=factor(dataset2$Gender,labels = c(0,1))
original_data=dataset2[2:30] 

dataset3=read.csv('dummy.csv')

dataset4=read.csv('depressiondummy.csv')
mixed_data=dataset4[2:30]

dataset5=read.csv('externaldata.csv')
external_data=dataset5[2:30] 

dataset6=read.csv('clara_1.csv')
dataset7=read.csv('clara_2.csv')
dataset8=read.csv('hc_1.csv')
dataset9=read.csv('hc_2.csv')
dataset10=read.csv('kmeans_1.csv')
dataset11=read.csv('kmeans_2.csv')
dataset12=read.csv('pam_1.csv')
dataset13=read.csv('pam_2.csv')



