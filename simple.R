#print("Hello World!")
#print(4 + 5)


fruits <- c("Apply", "Banana", "Cherry")
print(fruits)

years <- c(2025, 2026, 2027)
names(years) <- c("Previously", "Current", "Next")
print(years)
print(years["Next"])

df <- data.frame(index = 1:5, dat = rnorm(5))
print(df)