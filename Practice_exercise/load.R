load <- function() {
  install.packages("readxl", dependencies = TRUE)  # Only needed once
  library(readxl)
  data <- read.csv("/data/deck.csv")
  return(data)
}

setup <- function(deck) {
  DECK <- deck
  
  DEAL <- function() {
    if (nrow(deck) == 0) {
      stop("No more cards to deal.")
    }
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())  # Update global 'deck'
    return(card)
  }
  
  SHUFFLE <- function() {
    random <- sample(1:nrow(DECK), size = nrow(DECK))
    assign("deck", DECK[random, ], envir = globalenv())  # Reset and shuffle
  }
  
  list(deal = DEAL, shuffle = SHUFFLE)
}

# Load and setup
deck <- load()
cards <- setup(deck)

# Use functions
deal <- cards$deal
shuffle <- cards$shuffle
