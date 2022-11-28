library(tidyverse)
library(fs)

lst <- readxl::excel_sheets("database.xlsx") %>% 
  map(
    ~ readxl::read_excel("database.xlsx", sheet = .x)
  ) %>% 
  setNames(
    readxl::excel_sheets("database.xlsx")
  )
