library(here)
maternal_mortality <- read.csv(here("data-raw", "maternal_mortality.csv"))   
usethis::use_data(maternal_mortality, overwrite = TRUE)