#1
Age <- c(22,25,26)
Weight <- c(150,165,120)
Sex <- c("M","M","F")
data.frame(Age,Weight,Sex, row.names = c("Sam","Frank","Amy"))

#2
is.data.frame(mtcars)

#3
as.data.frame(matrix((1:25), nrow =5))

#4
head(mtcars)

#5
mean(mtcars$"mpg") #20.09062

#6
subset(mtcars, subset = cyl == 6)

#7
mtcars[,c("am","gear","carb")]

#8
mtcars[["performance"]] <- mtcars$hp/mtcars$wt
mtcars

#9
mtcars[["performance"]] <- round(mtcars$hp/mtcars$wt,2)
mtcars

#10
mean((subset(subset(mtcars, subset = hp > 100), subset = wt > 2.5))$"mpg") #16.86364

#11
mtcars["Hornet Sportabout", "mpg"]