generator <- function(set, prob = rep(1/length(set), length(set))) { 
  function(n) sample(set, n, replace = T, prob = prob)
}

values <- c("Ace", 2:10, "Jack", "Queen", "King")
suits <- c("Clubs", "Diamonds", "Hearts", "Spades")
card_deck <- outer(values, suits, paste, sep = " of ")
roulette_values <- c("Zero!", 1:36)

card_generator <- generator(card_deck)
coin_generator <- generator(c("Heads", "Tails"))
fair_roulette <- generator(roulette_values)

card_generator(10)
coin_generator(10)
fair_roulette(10)
