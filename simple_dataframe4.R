#5.27 Merging Data Frames by Common Column

#inner_join(df1, df2, by = "col")
#full_join(df1, df2, by = "col")
#left_join(df1, df2, by = "col")
#right_join(df1, df2, by = "col")

born <- tibble(
  name = c("Moe", "Larry", "Curly", "Harry"),
  year.born = c(1887, 1902, 1903, 1964),
  place.born = c("Bensonhurst", "Philadelphia", "Brooklyn", "Moscow")
)

died <- tibble(
  name = c("Curly", "Moe", "Larry"),
  year.died = c(1952, 1975, 1975)
)

ij <- inner_join(born, died, by="name")
print(ij)

fj <- full_join(born, died, by="name")
print(fj)
#fj <- full_join(born, died)
#print(fj)

df1 <- data.frame(key1 = 1:3, value=2)
df2 <- data.frame(key2 = 1:3, value=3)
ij <- inner_join(df1, df2, by = c("key1" = "key2"))
print(ij)

#5.28 Converting One Atomic Value into Another

#as.character(x)
#as.complex(x)
#as.numeric(x) or as.double(x)
#as.integer(x)
#as.logical(x)

print(as.numeric(" 3.14 ")) #[1] 3.14
print(as.integer(3.14)) #[1] 3
print(as.character(101)) #[1] "101"

print(as.numeric(c("1", "2.718", "7.389", "20.086"))) #[1]  1.000  2.718  7.389 20.086
#print(as.numeric(c("1", "2.718", "7.389", "20.086", "etc.")))  #(Warning message) [1]  1.000  2.718  7.389 20.086     NA

print(as.numeric(FALSE)) #[1] 0
print(as.numeric(TRUE)) #[1] 1

