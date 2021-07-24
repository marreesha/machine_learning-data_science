decorate_string <- function(pattern, ...) { 
  strReverse <- function(x) sapply(lapply(strsplit(x, NULL), rev), paste, collapse="")
  paste0(pattern, paste(...), strReverse(pattern))
}

# "123abc321"
decorate_string(pattern = "123", "abc")
