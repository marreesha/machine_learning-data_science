#calculation of the Ozone without NA (in 7, 8, 9 Month)
air <- subset(airquality, Month %in% c(7,8,9))
result <- aggregate(air$Ozone ~ Month, air, length)

describeBy(airquality$Wind, group = df$Month, na.rm = F, digits=1)
