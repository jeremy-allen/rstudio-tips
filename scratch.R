# test git push

library(palmerpenguins)
library(tidyverse)
library(janitor)

# rearrange panels
# change theme
# default R version
# don't save workspace data
# show last value
# set repo for RStudio Public Package Manager
# allow scroll past end of doc
# rainbow parentheses
# show current memory usage
# shift-cmd-p then do anything
# syntax highlighting in console output

# shift-cmd-r to insert section break and call it "prep"



df <- penguins_raw

df

# gross!
names(df)

# clean those names
df <- df %>% 
  clean_names()

# snippet time! type "if" then hit shift-tab



# regex time!
# reset df
df <- penguins_raw

# are there spaces or capital letters in col names?
str_detect(names(df), "[\\sA-Z]")
# but we only want one answer, so wrap in any()
any(str_detect(names(df), "[\\sA-Z]"))

# snippet time! type "if" then hit shift-tab
# paste in our regex condition and our clean_names code






glimpse(df)

df %>% 
  summarise(across(ends_with("mm"), ~mean(., na.rm = TRUE)))

df %>% 
  summarise(across(ends_with("mm"), ~mean(., na.rm = TRUE)))

df %>% 
  summarise(across(starts_with("culmen"), mean, na.rm = TRUE))

df %>% 
  summarise(
    across(
      starts_with("culmen"),
      mean,
      na.rm = TRUE
      )
    )





