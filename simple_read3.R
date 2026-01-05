library(openxlsx)

df1 <- read.xlsx(xlsxFile = "data/iris_excel.xlsx",
                 sheet = 'iris_data')
print(head(df1, 3))


#2
wb <- loadWorkbook("data/excel_table_data.xlsx")

tables <- getTables(wb, 'input_data')
table_range_str <- names(tables[tables == 'example_table'])
table_range_refs <- strsplit(table_range_str, ':')[[1]]

# use a regex to extract out the row numbers
table_range_row_num <- gsub("[^0-9.]", "", table_range_refs)
print(table_range_row_num)

# extract out the column numbers
table_range_col_num <- convertFromExcelRef(table_range_refs)
print(table_range_col_num)

#3
wb2 <- read.xlsx(
  xlsxFile = "data/excel_table_data.xlsx",
  sheet = 'input_data',
  cols = table_range_col_num[1]:table_range_col_num[2],
  rows = table_range_row_num[1]:table_range_row_num[2]
)
print(wb2)