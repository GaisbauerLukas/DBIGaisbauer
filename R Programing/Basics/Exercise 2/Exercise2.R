#1
func.lotto <- function(a,b,c,d,e,f){
  stopifnot(is.integer(a),is.integer(b),is.integer(c),is.integer(d),is.integer(e),is.integer(f))
  three <- 0
  four <- 0
  five <- 0
  jackpot <- 0
  
  for (i in 1:40) {
    #Generriert Zufallszahl
    zusatzzahl <- as.integer(runif(1,1,45))
    while(zusatzzahl != a && zusatzzahl != b && zusatzzahl != c && zusatzzahl != d  && zusatzzahl != e  && zusatzzahl != f){
      zusatzzahl <- as.integer(runif(1,1,45))
    }
    
    #Generriert eine Losung
    losung <- as.integer(runif(6,1,45))
    
    #Parameter für richtige Lösungen
    richtig <- 0
    
    #Abfrage ob Zusatzzahl in Losung
    if(zusatzzahl %in% losung){
      zusatzzahl <- zusatzzahl + 1
      richtig <- richtig +1
    }
    
    #Zählen der richtigen Zahlen
    richtig <- richtig + a %in% losung
    richtig <- richtig + b %in% losung
    richtig <- richtig + c %in% losung
    richtig <- richtig + d %in% losung
    richtig <- richtig + e %in% losung
    richtig <- richtig + f %in% losung
    
    if(richtig == 3){
      three <- three + 1
    }
    if(richtig == 4){
      four <- four + 1
    }
    if(richtig == 5){
      five <- five + 1
    }
    if(richtig == 6){
      jackpot <- jackpot + 1
    }
  }
  result <- c(paste0("Zusatzzahl: ", zusatzzahl, "x"), paste0("3 correct: ", three, "x"), paste0("4 correct: ", four, "x"), paste0("5 correct: ", five, "x"), paste0("jackpot: ", jackpot, "x"))
  result <- matrix(result, nrow = 5, ncol = 1)
  return(result)
}

#2
func.biSearch <- function(vector, needele) {
  stopifnot(is.vector(vector), is.numeric(vector), is.numeric(needele))
  r <- length(vector)
  #Gibt den Mittelpunkt zurück
  m <- ceiling(r / 2L)
  if (vector[m] > needele) {
    if (r == 1L) {
      return (FALSE)
    }
    func.biSearch(vector[1L:(m - 1L)], needele)
  }
  else if (vector[m] < needele) {
    if (r == 1L) {
      return (FALSE)
    }
    func.biSearch(vector[(m + 1L):r], needele)
  }
  else {
    TRUE
  }
}
