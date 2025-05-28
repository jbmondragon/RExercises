
hold <- function(){
  face <- c("ace", "two", "six")
  suits <- c("club", "club", "club")
  value <- c(1:3)
  
  hand_matrix <- data.frame(face, suits, value)
  
  return (hand_matrix)
}

