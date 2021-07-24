generator <- function(set) function(n) { 
  sample(set, n, replace=T)
} 

roulette_values <- c("Zero!", 1:36)
fair_roulette <- generator(roulette_values)
rigged_roulette <- generator(c("Zero!", roulette_values))

print(fair_roulette(10))
print(rigged_roulette(10))
