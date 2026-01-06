#5.14 Initializing a Matrix

vec <- 1:6
mat <- matrix(vec, 2, 3)
print(mat)

mat <- matrix(0, 2, 3)
print(mat)

mat <- matrix(NA, 2, 3) # Create a matrix populated with NA
print(mat)

mat <- mat <- matrix(c(1.1, 1.2, 1.3, 2.1, 2.2, 2.3), 2, 3)
print(mat)

theData <- c(
  1.1, 1.2, 1.3,
  2.1, 2.2, 2.3
)
mat <- matrix(theData, 2, 3, byrow = TRUE)
print(mat)

mat <- matrix(c(1.1, 1.2, 1.3,
                2.1, 2.2, 2.3),
              2, 3,
              byrow = TRUE)
print(mat)

#Expressed this way, it’s easy to see the two rows and three columns of data.
v <- c(1.1, 1.2, 1.3, 2.1, 2.2, 2.3)
dim(v) <- c(2, 3)
print(v)

#5.16 Giving Descriptive Names to the Rows and Columns of a Matrix
#rownames(mat) <- c("rowname1", "rowname2", ..., "rownameN")
#colnames(mat) <- c("colname1", "colname2", ..., "colnameN")

mat <- matrix(c(1.000, 0.556, 0.390,
                0.556, 1.000, 0.390,
                0.390, 0.444, 1.000), 3, 3)
colnames(mat) <- c("AAPL", "MSFT", "GOOG")
rownames(mat) <- c("AAPL", "MSFT", "GOOG")
print(mat)
# What is the correlation between MSFT and GOOG?
print(mat["MSFT", "GOOG"]) #[1] 0.444

#5.17 Selecting One Row or Column from a Matrix
print(mat[1, ]) # First row
print(mat[, 3]) # Third column

print(mat[1, , drop=FALSE]) # First row, one-row matrix
print(mat[, 3, drop=FALSE]) # Third column, one-column matrix