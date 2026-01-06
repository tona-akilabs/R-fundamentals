#5.23 Changing the Names of Data Frame Columns
df <- data.frame(V1 = 1:3, V2 = 4:6, V3 = 7:9)
#print(df)
df <- df %>% rename(tom = V1, dick = V2)
#print(df)
colnames(df) <- c("tom", "dick", "V2")
#print(df)

df <- data.frame(V1 = 1:3, V2 = 4:6, V3 = 7:9)
df <- df %>% select(tom = V1, V2)
print(df)

#5.24 Removing NAs from a Data Frame
#clean_dfrm <- na.omit(dfrm)
df <- data.frame(
  x = c(1, NA, 3, 4, 5),
  y = c(1, 2, NA, 4, 5)
)
print(df)
print(na.omit(df))
#x y
#1 1 1
#4 4 4
#5 5 5
print("execute sum")
#Cumulative sum:
#1, 1
#4, 1 + 4 = 5
#5, 1 + 4 + 5 = 10 
print(cumsum(na.omit(df)))
#result
#x  y
#1  1  1
#4  5  5
#5 10 10

#5.26 Combining Two Data Frames
#all.cols <- cbind(df1, df2)
#all.rows <- rbind(df1, df2)

df1 <- data.frame(a = c(1,2))
df2 <- data.frame(b = c(7,8))
all.cols <- cbind(df1, df2)
print(all.cols)

df1 <- data.frame(x = c("a", "a"), y = c(5, 6))
df2 <- data.frame(x = c("b", "b"), y = c(9, 10))
all.rows <- rbind(df1, df2)
print(all.rows)