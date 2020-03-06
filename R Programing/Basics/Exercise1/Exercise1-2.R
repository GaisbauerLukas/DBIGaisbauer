#1
func.name <- function(name){
  print(paste0("Hallo: ", name))
}
func.name("Lukas")

#2
func.name <- function(name){
  return (paste0("Hallo: ", name))
}

hallo.name <- func.name("Hansi")
hallo.name

#3
func.product <- function(a,b){
  return (a*b)
}

print(func.product(2,3))

#4
func.isInVektor <- function(a,b){
  return (a %in% b)
}

print(func.isInVektor(23,stockPrices))

#5
func.countInVektor <- function(a,b){
  length(grep(a, b))
}

print(func.countInVektor(23,stockPrices))

#6
func.neededBars <- function(a){
  res <- as.integer((a/5))
  return (res + (a %% 5))
}

print(func.neededBars(6))

#7
func.sumNotThree <- function(a,b,c){
  res <- 0
  if(a %% 3){
    res <- res + a
  }
  if(b %% 3){
    res <- res + b
  }
  if(c %% 3){
    res <- res + c
  }
  return (res)
}
print(func.sumNotThree(2,3,4))
print(func.sumNotThree(3,6,9))

#8
func.isPrime <- function(a) {
  if (a == 2) {
    return (TRUE)
  } else if (any(a %% 2:(a-1) == 0)) {
    return (FALSE)
  } else { 
    (TRUE)
  }
}

func.isPrime(2)
func.isPrime(3)
func.isPrime(2)
func.isPrime(5)
func.isPrime(21)
func.isPrime(23)