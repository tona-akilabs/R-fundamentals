library(openxlsx)

df1 <- read.xlsx(xlsxFile = "data/iris_excel.xlsx",
                 sheet = 'iris_data')

write.xlsx(df1,
           sheetName = "some_sheet",
           file = "out_file.xlsx")