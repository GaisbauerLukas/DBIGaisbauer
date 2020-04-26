#in case package not installed
#install.packages('ggplot2', repos="http://cran.rstudio.com/")
library(ggplot2)

setwd("/home/lukas/Documents/repos/DBI/Repo/DBIGaisbauer/R Programing/Basics/Exercise5")


csvInput <- read.delim2("waterway_travel_austria.csv", header = TRUE, col.names = c("year","waterway_journeys","transit_only"), sep = ",")
csvInput <- as.data.table(csvInput)
csvDf.long <- melt(csvInput, id = "year", measure = c("waterway_journeys", "transit_only"))
ggplot(data = csvDf.long, aes(year, value, colour = variable)) + geom_line() + geom_point() + theme_dark()
