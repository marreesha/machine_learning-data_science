# 2D Random walk with absorption
simulate_walk <- function(x, y, n_max = 100, p = 0.01) {
  current_position <- sqrt(x^2 + y^2)
  for (i in 1:n_max) {
    is_absorbed <- rbinom(1, 1, p)
    if (is_absorbed) return(1)
    x <- x + rnorm(1)
    y <- y + rnorm(1)
    current_position <- sqrt(x^2 + y^2)
    if (current_position > 6) return(2)
  }
  return(3)
}

# Simulate results
result <- data.frame(replicate(100000, simulate_walk(0, 0), simplify = TRUE))
breaches <- result[result == 2]
length(breaches)
