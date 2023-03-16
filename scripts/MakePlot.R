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

#the above plot, but more «minimal» (suggestion commit)
ggplot_minimal <- ggplot(dat) +
  geom_jitter(mapping = aes(x = polintr, y = stfdem), color = "steelblue", fill = NA, shape = 4, size = 1.2, alpha = 0.7) +
  geom_smooth(mapping = aes(x = polintr, y = stfdem), color = "red4", linetype = 1, linewidth = 1, method = "lm", se = FALSE) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 20, face = "bold"),
    axis.title.x = element_text(size = 14, face = "bold"),
    axis.title.y = element_text(size = 14, face = "bold"),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    panel.grid.minor = element_blank()
  ) +
  labs(
    title = "Satisfaction with Democracy and TV Usage",
    x = "Political Interest",
    y = "Satisfaction"
  )

ggplot_minimal
