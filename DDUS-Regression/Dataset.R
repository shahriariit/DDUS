# load the dataset
dataset2=read.csv('Depression.csv')
dataset2=dataset2[2:30] 

dataset3=read.csv('dummy.csv')

dataset4=read.csv('depressiondummy.csv')
dataset4=dataset4[2:30]

dataset5=read.csv('externaldata.csv')
dataset5=dataset5[2:30] 

dataset6=read.csv('clara_1.csv')
dataset7=read.csv('clara_2.csv')
dataset8=read.csv('hc_1.csv')
dataset9=read.csv('hc_2.csv')
dataset10=read.csv('kmeans_1.csv')
dataset11=read.csv('kmeans_2.csv')
dataset12=read.csv('pam_1.csv')
dataset13=read.csv('pam_2.csv')

pathway="C:/Users/Shahriar/Documents/ML/DDUS/DDUS/DDUS-Regression/file/"

library(rio)
my_data <- import_list(dir(pathway, pattern = ".csv"))


