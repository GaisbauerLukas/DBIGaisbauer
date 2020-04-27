#in case package not installed
#install.packages('ggplot2', repos="http://cran.rstudio.com/")
#install.packages('data.table', repos="http://cran.rstudio.com/")
library(data.table)
library(ggplot2)

setwd("/home/lukas/Documents/repos/DBI/Repo/DBIGaisbauer/R Programing/Basics/Exercise5")


data <- fread("vgsales.csv")
data <- head(data,10)
head(data)
myplot <- ggplot(data, aes(x = Rank, y = Global_Sales, color = Platform))
myplot <- myplot + geom_point()
head(data,10)
pointsToLabel <- c("Wii Sports", "Super Mario Bros.","Mario Kart Wii", "Wii Sports Resot", "Pokemon Red/Pokemon Blue", "Tetris", "New Super Mario Bros.", "Wii Play", "New Super Mario Bros. Wii", "Duck Hunt")
myplot <- myplot + geom_text(aes(label = Name), data = subset(data, Name %in% pointsToLabel),check_overlap = TRUE)
myplot


data <- fread("vgsales.csv")
data <- head(data,50)
myplot <- ggplot(data, aes(x = Platform, y = Global_Sales, color = Platform)) 
myplot <- myplot
myplot
