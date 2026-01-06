library(purrr)     # or library(tidyverse)

#5.11 Flatten a List into a Vector
#Use the unlist function.

iq.scores <- list(100, 120, 103, 80, 99)
#print(iq.scores)
#print(mean(iq.scores))
#print(mean(unlist(iq.scores)))
#print(unlist(iq.scores))
cat("IQ Scores:", unlist(iq.scores), "\n")

#5.12 Removing NULL Elements from a List (library(purrr)     # or library(tidyverse))
lst <- list("Moe", NULL, "Curly")
#print(lst)
#print(compact(lst))  # Remove NULL element

#5.13 Removing List Elements Using a Condition
lst <- list(NA, 0, NA, 1, 2)
#print(lst)
print(lst %>% discard(is.na))

lst <- list(3, "dog", 2, "cat", 1)
print(lst %>%
        discard(is.character))


is_na_or_null <- function(x) {
  is.na(x) || is.null(x)
}

lst <- list(1, NA, 2, NULL, 3)

print(lst %>%
        discard(is_na_or_null))