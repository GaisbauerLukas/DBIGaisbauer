#1
a <- c(1,2,3)
b <- c(4,5,6)
rbind(a,b)

#2
mat <- matrix((1:9), nrow = 3, ncol = 3)
mat

#3
is.matrix(mat)

#4
mat2 <- matrix((1:25), nrow = 5, ncol = 5, byrow = TRUE)
mat2

#5.1
mat2[(2:3),(2:3)]

#5.2
mat2[(4:5),(4:5)]

#6
sum(mat2)

#7
matrix(as.integer(runif(20,0,100)), nrow = 4, ncol = 5)
