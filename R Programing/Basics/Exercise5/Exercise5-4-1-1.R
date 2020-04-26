#in case package not installed
#install.packages('ggplot2', repos="http://cran.rstudio.com/")
library(ggplot2)

head(mpg)
head(txhousing)

#1
ggplot(data = mpg, aes(hwy)) + geom_histogram(bins=30)

#2
ggplot(data = mpg, aes(x= manufacturer)) + geom_bar(aes(fill=factor(cyl)))

#3
ggplot(txhousing,aes(x=sales,y=volume)) + geom_point()

#4
ggplot(txhousing,aes(x=sales,y=volume)) + geom_point(color='blue') + geom_smooth(color='red')