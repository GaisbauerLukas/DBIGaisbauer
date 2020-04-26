#in case package not installed
#install.packages('dplyr', repos="http://cran.rstudio.com/")
#install.packages('ggplot2', repos="http://cran.rstudio.com/")
#install.packages('ggthemes', repos="http://cran.rstudio.com/")
#install.packages('data.table', repos="http://cran.rstudio.com/")
library(dplyr)
library(data.table)
library(ggplot2)
library(ggthemes)

setwd("/home/lukas/Documents/repos/DBI/Repo/DBIGaisbauer/R Programing/Bonus/Economist_Assignment_Big_Plot")

#Vorbereitung
theme_set(theme_economist_white())

#1
df <- fread("Economist_Assignment_Data.csv", drop = 1)

#2
head(df)

#3
ggplot(df, aes(x=CPI, y=HDI,color = Region)) + geom_point()

#4
ggplot(df, aes(x=CPI, y=HDI,color = Region)) + geom_point(size = 4,shape=1)

#5
ggplot(df, aes(x=CPI, y=HDI,color = Region)) + geom_point(size = 4,shape=1) + geom_smooth(aes(group=1))

#6
zwischenstand <- ggplot(df, aes(x=CPI, y=HDI,color = Region)) + geom_point(size = 4,shape=1) + geom_smooth(aes(group=1), method = 'lm', formula = y ~ log(x), se = FALSE, color = 'red')

#7
zwischenstand + geom_text(aes(label=Country)) 

#8
#Also added Austria to this point because I think it's cool :)
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore", "Austria")
zwischenstand <- zwischenstand + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)

#9
zwischenstand <- zwischenstand + theme_economist_white()

#10
zwischenstand <- zwischenstand + scale_x_continuous(name="Corruption Perceptions Index, 2011 (10=least corrupt)", breaks = 1:10, limits = c(0.9,10.5)) + scale_y_continuous(name = 'Human Development Index, 2011 (1=Best)', limits = c(0.2, 1.0))
zwischenstand <- zwischenstand + ggtitle('Corruption and Human development by Gaisbauer Lukas')
zwischenstand
