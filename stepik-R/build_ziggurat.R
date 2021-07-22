build_ziggurat <- function(n) {
  size = 2*n-1
  m = matrix(1, nrow = size, ncol = size)
  for(i in 1:(n-1)) {
    m[(1 + i):(size - i), (1 + i):(size - i)] <- i+1
  }
m  
}

build_ziggurat(4)

#[,1] [,2] [,3] [,4] [,5] [,6] [,7]
#[1,]    1    1    1    1    1    1    1
#[2,]    1    2    2    2    2    2    1
#[3,]    1    2    3    3    3    2    1
#[4,]    1    2    3    4    3    2    1
#[5,]    1    2    3    3    3    2    1
#[6,]    1    2    2    2    2    2    1
#[7,]    1    1    1    1    1    1    1
