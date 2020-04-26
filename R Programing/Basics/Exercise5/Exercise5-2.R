#in case package not installed
#install.packages('tidyr', repos="http://cran.rstudio.com/")
library(tidyr)

setwd("/home/lukas/Documents/repos/DBI/Repo/DBIGaisbauer/R Programing/Basics/Exercise5")

#1
readFileLines <- function(filepath) {
  l <- list()
  i <- 1
  conn = file(filepath, 'r')
  while (TRUE) {
    line = readLines(conn, n = 1)
    if (length(line) == 0) {
      break
    }
    l[[i]] <- line
    i <- i+1
  }
  close(conn)
  return(l)
}
lines <- readFileLines('chess_moves.txt')
lines

#2
df <- data.frame(data = matrix(unlist(lines), nrow=length(lines), byrow=T))
separate(df, data, c("from", "to"))
