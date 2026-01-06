library(dplyr)
#5.18 Initializing a Data Frame from Column Data

df <- data.frame(
  name = c("Dara", "Long", "Rith"),
  age = c(27, 32, 36),
  address = c("PP", "PV", "SR")
)
#print(df)
name <- c("Dara", "Long", "Rith")
age <- c(27, 32, 36)
address <- c("PP", "PV", "SR")
df <- data.frame(name, age, address)
#print(df)

list.of.vector <- list(name = name, age = age, address = address)
df <- data.frame(list.of.vector)
print(df)
df <- as.data.frame(list.of.vector)
print(df)

#5.19 Initializing a Data Frame from Row Data
#rbind(row1, row2, . . . , rowN)

r1 <- data.frame(a = 1, b = 2, c = "X")
r2 <- data.frame(a = 3, b = 4, c = "Y")
r3 <- data.frame(a = 5, b = 6, c = "Z")
rb <- rbind(r1, r2, r3)
#print(rb)

list.of.rows <- list(r1, r2, r3)
rb <- bind_rows(list.of.rows) # The bind_rows function from the tidyverse package dplyr
print(rb)

#Factors in data frames
df <- data.frame(a = 1, b = 2, c = "a", stringsAsFactors = FALSE)
#print(df)

## same set up as in the previous examples
print("same set up as in the previous examples")
l1 <- list( a=1, b=2, c='X' )
l2 <- list( a=3, b=4, c='Y' )
l3 <- list( a=5, b=6, c='Z' )
obs <- list(l1, l2, l3)
df <- do.call(rbind, Map(as.data.frame, obs)) 
print(df)

# Yes, you could use stringsAsFactors=FALSE above,
# but we're assuming the data.frame 
# came to you with factors already 

i <- sapply(df, is.factor)             ## determine which columns are factors
df[i] <- lapply(df[i], as.character)   ## turn only the factors to characters
print(df)