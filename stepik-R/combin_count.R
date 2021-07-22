combin_count <- function(n, k, with_repretitions = FALSE) {
  if (with_repretitions) {
    return(prod(c((k+1):(n+k-1)))/prod(c(1:(n-1))))
  } else {
    return(prod(c((k+1):n))/prod(c(1:(n-k))))
  }  
}

print(combin_count(5, 3)) #10
