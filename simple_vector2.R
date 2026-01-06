#5.3 Understanding the Recycling Rule
v1 <- 1:6
v2 <- 1:3
v <- cbind(1:6, 1:3)
#print(cbind(1:6, 1:3))
print(v)
v <- (1:6) + (1:3)
print(v)
print((1:6) + (1:3))

v <- (1: 6) + 10
print(v) #[1] 11 12 13 14 15 16