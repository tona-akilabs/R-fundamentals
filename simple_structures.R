v <- c(10, 20, 30)
names(v) <- c("Moe", "Larry", "Curly")
print(v)

# select column 
#print(v["Curly"])
#print(v[3])
#print(v[c(1, 3)])


v2 <- list("Moe", "Larry", "Curly")

#print(class(v))
#print(class(v2))
#print(mode(v))
#print(mode(v2))

df <- data.frame(x = 1:3, y = c("NY", "CA", "IL"))
print(df)
#print(mode(df)) #"list"

#Class: Abstract Type
d <- as.Date("2025-01-05")
print(d)
#print(length(d)) # 1
#print(mode(d)) #"numeric"
#print(class(d)) #"Date"


#Matrices
A <- 1:6
print(dim(A)) # NULL
print(A) #1 2 3 4 5 6
dim(A) <- c(2, 3) #dimensions to 2 × 3
print(A)

B <- list(1, 2, 3, 4, 5, 6)
print(dim(B)) #NULL
dim(B) <- c(2, 3)
print(B)

#Arrays
D <- 1:12
dim(D) <- c(2, 3, 2) #dimensions 2 × 3 × 2
#print(D)

C <- list(1, 2, 3, "X", "Y", "Z")
dim(C) <- c(2, 3)
print(C)
