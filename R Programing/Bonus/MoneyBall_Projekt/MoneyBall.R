#in case package not installed
#install.packages('data.table', repos="http://cran.rstudio.com/")
#install.packages('dplyr', repos="http://cran.rstudio.com/")

library(dplyr)
library(data.table)

setwd("/home/lukas/Documents/repos/DBI/Repo/DBIGaisbauer/R Programing/Bonus/MoneyBall_Projekt")

#1
dat <- fread("Batting.csv")

#2
head(dat)

#3
str(dat)

#4
head(dat$AB)

#5
head(dat$X2B)
head(dat[,'2B'])

#6
dat$BA <- dat$H/dat$AB

#7
tail(dat$BA,5)

#8
dat$OBP <- (dat$H + dat$BB + dat$HBP)/(dat$AB + dat$BB + dat$HBP + dat$SF)

#9
dat$X1B <- dat$H - dat$X2B -dat$X3B - dat$HR

#10
dat$SLG <- ((1 * dat$X1B) + (2* dat$X2B) + (3* dat$X3B) + (4 * dat$HR)) / dat$AB

#11
str(dat)

#12
sal <- fread("Salaries.csv")

#13
summary(sal)
newsal <- subset(sal, subset = sal$yearID >= 1985)
#14
summary(newsal)

#15
combo <- merge(newsal, dat, c('playerID', 'yearID'))
summary(combo)

#16
lost_player <- subset(combo, playerID %in% c('giambja01','damonjo01', 'seanzol01'))
lost_player

#17
lost_player <- subset(lost_player,subset = yearID == 2001)
lost_player
