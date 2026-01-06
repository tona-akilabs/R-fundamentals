library(dplyr)
#5.20 Appending Rows to a Data Frame
suburbs <- read.csv("./data/suburbs.txt")
#print(suburbs)
newRow <- data.frame(city = "West Dundee", county = "Kane",
                     state = "IL", pop = 7352)
suburbs <- rbind(suburbs, newRow)
#print(suburbs)
suburbs <- rbind(suburbs,
                 data.frame(city = "West Dundee", county = "Kane",
                            state = "IL", pop = 7353))
#print(suburbs)
suburbs <- rbind(suburbs,
                 data.frame(city = "West Dundee", county = "Kane",
                            state = "IL", pop = 7352),
                 data.frame(city = "East Dundee", county = "Kane",
                            state = "IL", pop = 3192)
)
#print(suburbs)

#5.21 Selecting Data Frame Columns by Position
suburbs <- read.csv("data/suburbs.txt") %>% head(3)
#print(suburbs)

#suburbs <- suburbs %>% dplyr::select(1)
#print(suburbs)

#print(head(suburbs, 1))

#suburbs <- suburbs %>% dplyr::select(1, 3, 4)
#suburbs <- suburbs %>% dplyr::select(2:4)
#print(suburbs)

#print(suburbs[1])
#print(suburbs[c(1,3)])

#Matrix-style subscripting
# suburbs is a tibble so we convert for this example
suburbs_df <- as.data.frame(suburbs)
print(suburbs_df[, 1])
print(suburbs_df[, c(1, 4)])