data2 <- read.csv("./data/data2.csv")
print(data2)
#print(data2["Fisher"])

#print(head(data2, 2))
#print(tail(data2, 2))

#print(data2[(nrow(data2)-1):nrow(data2), ])
#print(data2[nrow(data2) + 1 - nrow(data2):nrow(data2), ])

#print(nrow(data2))
#print(nrow(data2) - 1)
#print(nrow(data2) - 3)
#print(nrow(data2) + 1 - nrow(data2))

#count rows
#print(nrow(data2))

#count columns
#print(ncol(data2))

#count columns and rows
cat("Columns: ", ncol(data2), " Rows: ", nrow(data2))