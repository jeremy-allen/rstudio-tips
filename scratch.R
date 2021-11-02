# change shortcut  for insert section break to ctl-shift-b
# insert section break and call it "prep"
# normally is shift-cmd-r but that will refresh your browser



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





