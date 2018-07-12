inflammation <- read.csv("https://raw.githubusercontent.com/TIBHannover/FAIR-R/gh-pages/_episodes_rmd/inflammation.csv", header = FALSE)
library(dplyr)
library(tidyr)

#head(inflammation)

inflammation_long <- inflammation %>%
    tbl_df() %>%
    mutate(PatientID = 1:n()) %>%
    gather(Time, InflammationScore, -PatientID)
#View(inflammation_long)

devtools::use_data(inflammation, overwrite = TRUE)
