#5.1 Appending Data to a Vector
v <- c(1, 2, 3)
newItem <- c(6, 7, 8)
print(c(v, newItem)) #[1] 1 2 3 6 7 8

v <- c(1, 2, 3)
v[length(v) + 1] <- 42
print(v) #[1]  1  2  3 42

v <- c(1, 2, 3)
v <- c(v, 4) # Append a single value to v
print(v) #[1] 1 2 3 4

w <- c(5, 6, 7, 8)
v <- c(v, w)
print(v) #[1] 1 2 3 4 5 6 7 8

#5.2 Inserting Data into a Vector
#append(vec,newvalues, after =n)
v1 <- append(1:10, 99, after = 5)
print(v1) #[1]  1  2  3  4  5 99  6  7  8  9 10

v1 <- append(1:10, 99, after = 0)
print(v1) #99  1  2  3  4  5  6  7  8  9 10