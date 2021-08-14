factor_price <- ifelse(diamonds$price >= mean(diamonds$price), 1, 0)
factor_carat <- ifelse(diamonds$carat >= mean(diamonds$carat), 1, 0)
chi <- chisq.test(x = factor_price, y = factor_carat)
main_stat <- chi$statistic
