library(here)
##########################################
# Regression Model
##########################################

# import data
ess_data <- readRDS(here("data", "data_processed.rds"))

# modelling satisfaction with democracy
model <- lm(stfdem ~ tvpol + polintr + trstprl + gndr + agea, ess_data)
summary(model)

# export model object