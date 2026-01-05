#ref: https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/cars.html

#print(cars)
#print(cars[0])

#plot(cars, xlab = "Speed (mph)", ylab = "Stopping distance (ft)", las = 1)

#lines(lowess(cars$speed, cars$dist, f = 2/3, iter = 3), col = "red")
#title(main = "cars data")

#plot(cars, xlab = "Speed (mph)", ylab = "Stopping distance (ft)", las = 1, log = "xy")
#title(main = "cars data (logarithmic scales)")

#lines(lowess(cars$speed, cars$dist, f = 2/3, iter = 3), col = "red")

#summary(fm1 <- lm(log(dist) ~ log(speed), data = cars))

#opar <- par(mfrow = c(2, 2), oma = c(0, 0, 1.1, 0), mar = c(4.1, 4.1, 2.1, 1.1))
#plot(fm1)
#par(opar)

#print(head(cars))
print(summary(cars))