library(palmerpenguins)
library(dplyr)
library(janitor)

df <- penguins_raw

# clean those names
df <- df %>% 
  clean_names()

mean_sum <- df %>% 
  summarise(across(ends_with("mm"), ~mean(., na.rm = TRUE)))
