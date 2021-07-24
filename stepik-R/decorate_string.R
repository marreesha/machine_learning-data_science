decorate_string <- function(pattern = "", ..., sep = " ") {
  revpattern <- paste0(strsplit(pattern, split = "")[[1]][nchar(pattern):1], collapse = "")
  paste(pattern, paste(..., sep = sep), revpattern, sep = "")
}

# "123abc321"
decorate_string(pattern = "123", "abc")
