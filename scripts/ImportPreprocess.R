##########################################
# Importing and Preprocessing data
##########################################
install.packages("here")
install.packages("rio")
library(tidyverse)
library(here)
dat <- rio::import(here::here("data", "ESS1-7e01.csv"))

# Preprocessing: Choosing Variables and Filtering Refusals

dat1 <- dat %>% 
  select(cntry, cseqno, tvpol, polintr, trstprl, gndr, agea, stfdem) %>% 
  filter(cntry == "CH", tvpol != 66 & tvpol != 88)

  
