scores <- c(61, 66, 90, 88, 100)
print(scores)

points <- data.frame(
  label = c("Low", "Mid", "High"),
  lbound = c(0, 0.67,   1.64),
  ubound = c(0.67, 1.64,   2.33)
)
print(points)


#Printing Fewer Digits (or More Digits)
print(pi, digits = 4) #[1] 3.142

print(100 * pi, digits = 4) #[1] 314.2

cat(pi, "\n") #3.141593

cat(format(pi, digits = 4), "\n") #3.142


q <- seq(from = 0, to = 3, by = 0.5)
tbl <- data.frame(Quant = q,
                  Lower = pnorm(-q),
                  Upper = pnorm(q))
print(tbl)
print(tbl, digits=2)