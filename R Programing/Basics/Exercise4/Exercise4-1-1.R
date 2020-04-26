#in case package not installed
#install.packages('data.table', repos="http://cran.rstudio.com/")
library(data.table)

setwd("/home/lukas/Documents/repos/DBI/Repo/DBIGaisbauer/R Programing/Basics/Exercise4")

#1
df <- data.frame(fread("volunteers.csv"))
df

#2
df$isVolunteer <- df[,"volunteer"] == 'yes'
df

#3
df[,"volunteer"] <- NULL
df

#4
colnames(df)[5] <- "volunteer"
df

#5
df$factorDiff <- abs(df$neuroticism-df$extraversion)
df

#6
mapply(abs,df$neuroticism - df$extraversion)
