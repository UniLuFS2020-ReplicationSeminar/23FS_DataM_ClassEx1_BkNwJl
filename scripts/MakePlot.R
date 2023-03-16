##########################################
# Make Plot for Data
##########################################
library(here)
library(ggplot2)

dat <- readRDS(here("data", "data_processed.rds")) # reading preprocessed data

#Plotting possible relation of satiscation and tv usage
ggplot(dat) +
  geom_jitter(mapping = aes(x = tvpol, y = stfdem), color = "steelblue", shape = 7) +
  geom_smooth(mapping = aes(x = tvpol, y = stfdem), color = "red4", method = "lm") +
  labs(
    title = "Satisfaction with democracy and TV usage",
    x = "TV usage",
    y = "Satisfaction")


#Plotting possible relation of satiscation and political interest
ggplot(dat) +
  geom_jitter(mapping = aes(x = polintr, y = stfdem), color = "steelblue", shape = 7) +
  geom_smooth(mapping = aes(x = polintr, y = stfdem), color = "red4", method = "lm") +
  labs(
    title = "Satisfaction with democracy and TV usage",
    x = "Political interest",
    y = "Satisfaction")
  

