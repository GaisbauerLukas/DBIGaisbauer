#in case package not installed
#install.packages('ggplot2', repos="http://cran.rstudio.com/")
library(ggplot2)

theme_set(theme_base())
ggplot(txhousing, aes(x=sales, y=volume), scale_x_continuous(limits = c(150,600))) + geom_density2d() + stat_density_2d(aes(fill = after_stat(level)), geom = "polygon")

