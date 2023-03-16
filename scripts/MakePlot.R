##########################################
# Make Plot for Data
##########################################
library(here)
library(ggplot2)

dat <- readRDS(here("data", "data_processed.rds")) # reading preprocessed data

#Plotting possible relation of satisfaction and TV usage
ggplot1 <- ggplot(dat) +
  geom_jitter(mapping = aes(x = tvpol, y = stfdem), color = "steelblue", fill = NA, shape = 4, size = 1.2) +
  geom_smooth(mapping = aes(x = tvpol, y = stfdem), color = "red4", linetype = 1, linewidth = 0.5, method = "lm") +
  theme_grey() +
  labs(
    title = "Satisfaction with democracy and TV usage",
    x = "TV usage",
    y = "Satisfaction") 
  
save(ggplot, file = here("data", "ggplot1.RData")) #saving ggplot in R format
ggsave(file = here("images", "Satisfaction-TVusage.png")) #saving as image

#Plotting possible relation of satisfaction and political interest
ggplot2 <- ggplot(dat) +
  geom_jitter(mapping = aes(x = polintr, y = stfdem), color = "steelblue", fill = NA, shape = 4, size = 1.2) +
  geom_smooth(mapping = aes(x = polintr, y = stfdem), color = "red4", linetype = 1, linewidth = 0.5, method = "lm") +
  theme_grey() +
  labs(
    title = "Satisfaction with democracy and TV usage",
    x = "Political interest",
    y = "Satisfaction")
  
save(ggplot, file = here("data", "ggplot2.RData")) #saving ggplot in R format
ggsave(file = here("images", "Satisfaction-Pol.Interest.png")) #saving as image


