Roll <- function(){
  die <- 1:6
  prob<-c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8)
  size <- 1
  names(die) <- c("uno", "dos", "tres", "quatro", "singko", "sais")
  return(sample(die, size, replace=TRUE, prob=prob))
}

Plot <- function(){
  roll <- Roll()
  print(paste("Value of the dice: ",roll))
  library(ggplot2)
  print(qplot(replicate(1000, Roll()), binwidth=1, xlab="Dice Roll", main="Histogram of Dice Rolls", fill=I("steelblue"),col=I("black")))
}

