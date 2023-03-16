##########################################
# Make Plot for Data
##########################################
library(here)
library(ggplot2)

dat <- readRDS(here("data", "data_processed.rds")) # reading preprocessed data

#Plotting possible relation of satisfaction and TV usage
ggplot1 <- ggplot(dat) +
  geom_jitter(mapping = aes(x = tvpol, y = stfdem), color = "steelblue", fill = NA, shape = 4, size = 1.2, alpha = 0.7) +
  geom_smooth(mapping = aes(x = tvpol, y = stfdem), color = "red4", linetype = 1, linewidth = 1, method = "lm", se = FALSE) +
  theme_grey() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 17, face = "bold"),
    axis.title.x = element_text(size = 14, face = "bold"),
    axis.title.y = element_text(size = 14, face = "bold"),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    panel.grid.minor = element_blank()
  ) +
  labs(
    title = "Satisfaction with democracy and TV usage",
    x = "TV usage",
    y = "Satisfaction") 

ggplot1  
save(ggplot, file = here("data", "ggplot1.RData")) #saving ggplot in R format
ggsave(file = here("images", "Image1.png")) #saving as image

#Plotting possible relation of satisfaction and political interest
ggplot2 <- ggplot(dat) +
  geom_jitter(mapping = aes(x = polintr, y = stfdem), color = "steelblue", fill = NA, shape = 4, size = 1.2, alpha = 0.7) +
  geom_smooth(mapping = aes(x = polintr, y = stfdem), color = "red4", linetype = 1, linewidth = 1, method = "lm", se = FALSE) +
  theme_grey() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 17, face = "bold"),
    axis.title.x = element_text(size = 14, face = "bold"),
    axis.title.y = element_text(size = 14, face = "bold"),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    panel.grid.minor = element_blank()
  ) +
  labs(
    title = "Satisfaction with Democracy and Political Interest",
    x = "Political Interest",
    y = "Satisfaction")

ggplot2
save(ggplot, file = here("data", "ggplot2.RData")) #saving ggplot in R format
ggsave(file = here("images", "Image2.png")) #saving as image
