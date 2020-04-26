#in case package not installed
#install.packages('dplyr', repos="http://cran.rstudio.com/")
library(dplyr)

#1
filter(mtcars,mpg>20,cyl==6)

#2
arrange(mtcars,cyl,desc(wt))

#3
select(mtcars,mpg,hp)

#4
distinct(select(mtcars,gear))

#5
mutate(mtcars,Performance=hp/wt)

#6
summarise(mtcars,avg_mpg=mean(mpg))

#7
mtcars %>% filter(cyl==6) %>% summarise(avg_hp = mean(hp))

#8
sample_n(mtcars,nrow(mtcars)/10)