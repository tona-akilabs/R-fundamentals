library(tidyverse)

berkley <- read_csv('http://bit.ly/barkley18', comment = '#')
print(berkley)
#> Parsed with column specification:
#cols(
#   Name = col_character(),
#   Location = col_character(),
#   Time = col_time(format = "")
#)
