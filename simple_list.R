#5.6 Creating a List
#lst <- list(x, y, z)

lst <- list(0.5, 0.841, 0.977)
print(lst)

lst <- list(3.14, "Moe", c(1, 1, 2, 3), mean)
print(lst)

lst <- list()
lst[[1]] <- 3.14
lst[[2]] <- "Moe"
lst[[3]] <- c(1, 1, 2, 3)
lst[[4]] <- mean
print(lst)

lst <- list(mid = 0.5, right = 0.841, far.right = 0.977)
print(lst)
print(lst$mid) #[1] 0.5
print(lst$right) #[1] 0.841

lst <- list(mid = 0.5, right = 0.841, far.right = 0.977)
print(lst)

values <- c(1, 2, 3)
names <- c("a", "b", "c")
lst <- list()
lst[names] <- values
print(lst)

lst <- list(
  far.left = 0.023,
  left = 0.159,
  mid = 0.500,
  right = 0.841,
  far.right = 0.977
)
print(lst)

lst <- list()
lst$far.left <- 0.023
lst$left <- 0.159
lst$mid <- 0.500
lst$right <- 0.841
lst$far.right <- 0.977
print(lst)


#5.10 Removing an Element from a List
years <- list(Kennedy = 1960, Johnson = 1964,
              Carter = 1976, Clinton = 1994)
print(years)
years[["Johnson"]] <- NULL # Remove the element labeled "Johnson"
print(years)
years[c("Carter", "Clinton")] <- NULL # Remove two elements
print("Remove two elements")
print(years)