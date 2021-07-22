x <- c(5, 2, 7, 7, 7, 2, 0, 0)

count_elements <- function(x) {
  sapply(sort(unique(x)), function(n){c(n, sum(x == n))})
}

#x <- c(5, 2, 7, 7, 7, 2, 0, 0)
#     [,1] [,2] [,3] [,4] [,5]
#[1,]    0    2    5    6    7
#[2,]    2    2    1    1    3
