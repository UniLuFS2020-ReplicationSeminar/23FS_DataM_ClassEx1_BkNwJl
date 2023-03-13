##########################################
# Importing and Preprocessing data
##########################################
# install.packages("here")
# install.packages("rio")
library(tidyverse)
library(here)
library(rio)
dat <- import(here("data", "ESS1-7e01.csv"))

# Preprocessing: Choosing Variables and Filtering Refusals / Missing Answers

dat2 <- dat %>% 
  select(cntry, cseqno, tvpol, polintr, trstprl, gndr, agea, stfdem) %>% 
  filter(cntry == "CH", 
         tvpol != 66 & tvpol != 77 & tvpol != 88 & tvpol != 99,
         polintr != 7 & polintr != 8 & polintr != 9,
         trstprl != 77 & trstprl != 88 & trstprl != 99,
         gndr != 9,
         stfdem != 77 & stfdem != 88 & stfdem != 99)

# Storing processed data within data folder

saveRDS(dat2, file = here("data", "data_processed.rds"))
