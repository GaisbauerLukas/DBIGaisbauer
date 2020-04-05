#in case package not installed
#install.packages('RPostgreSQL', repos="http://cran.rstudio.com/")
#install.packages('rstudioapi', repos="http://cran.rstudio.com/")

#1
library(RPostgreSQL)
library(rstudioapi)
con <- dbConnect(dbDriver("PostgreSQL"),
                 dbname   = "minneapolis_traffic",
                 host     = "130.61.88.14",
                 port     = 5432,
                 user     = "police_data_scientist",
                 password = rstudioapi::askForPassword("Password!"))
dbListTables(con)
#normaly with dbReadTable but it's not working caused by the sheme
dat <- dbGetQuery(con, 'SELECT * FROM police_stops.traffic_stops')
dat

#2
nrow(subset(dat,subset = dat$person_search == TRUE & dat$neighborhood == "Downtown West"))
#or
nrow(dbGetQuery(con, "SELECT * FROM police_stops.traffic_stops WHERE person_search = TRUE AND neighborhood = 'Downtown West'"))

#3
dbGetQuery(con, "SELECT race, COUNT(*) FROM police_stops.traffic_stops WHERE race != 'NA' AND problem = 'suspicious' GROUP BY race")

#4
suspicious <- nrow(subset(dat,dat$problem == "suspicious"))
traffic <- nrow(subset(dat,dat$problem == "traffic"))
#or
suspicious <- nrow(dbGetQuery(con, "SELECT * FROM police_stops.traffic_stops WHERE problem = 'suspicious'"))
traffic <- nrow(dbGetQuery(con, "SELECT * FROM police_stops.traffic_stops WHERE problem = 'traffic'"))

if(suspicious > traffic){
  print('stops for suspicious are more commen')
}else{
  print('stops for traffic are more commen')
}