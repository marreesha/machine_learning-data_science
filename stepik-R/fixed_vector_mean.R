my_vector <- rnorm(30)
my_vector[sample(1:30, 10)] <- NA

fixed_vector <- ifelse(is.na(my_vector), mean(my_vector, na.rm = T), my_vector)
