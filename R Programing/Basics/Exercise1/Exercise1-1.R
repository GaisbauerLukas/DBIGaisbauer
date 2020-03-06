#1
2^5 #32

#2
stockPrices <- c(23,27,23,21,34)

#3
names(stockPrices) <- c("Montag","Dienstag","Mittwoch", "Donnerstag", "Freitag")

#4
mean(stockPrices) #25.6

#5
over23 <- stockPrices>23 
over23

#6
stockPrices[over23]

#7
which.max(stockPrices)

#8
x <- 1

if(x == 1){
  print("hello")
}

#9

x <- 3

if(x%%2 == 0){
  print("Even")
} else {
  print("Not Even Close")
}

#10
x <- c(3,1,2)

if(x[1] > x[2]){
  x <- c(x[2],x[1],x[3])
}
if(x[1] > x[3]){
  x <- c(x[3],x[2],x[1])
}
if(x[2] > x[3]){
  x <- c(x[1], x[3], x[2])
}

x

#11

x <- c(3,82,4)

if(x[1] > x[2]){
  if(x[1] > x[3]){
    res <- x[1]
  } else {
    res <- x[3]
  }
} else {
  if(x[2] > x[3]){
    res <- x[2]
  } else {
    res <- x[2]
  }
}

res