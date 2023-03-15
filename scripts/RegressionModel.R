library(here)
##########################################
# Regression Model
##########################################

# import data
ess_data <- readRDS(here("data", "data_processed.rds"))

# modelling satisfaction with democracy
model <- lm(stfdem ~ factor(tvpol) + factor(polintr) + trstprl + factor(gndr) 
            + agea, ess_data)
summary(model)

# export model object
save(model, file = here("data", "model.RData"))