#in case package not installed
#install.packages('rJava',repos="http://cran.rstudio.com/")
#install.packages('xlsxjars',repos="http://cran.rstudio.com/")
#install.packages('xlsx',repos="http://cran.rstudio.com/")
library(xlsx)

write.xlsx(df, "volunteers.xlsx",sheetName = "VolDat")

#unnötige finde ich factorDiff da dieses berrechnet werden kann und somit nicht als daten gespeichert werden muss

