library(dplyr)


data(mtcars)


View(mtcars)


df <- as_tibble(mtcars)
View(df)



df_high_mpg <- df |>
  filter(mpg > 20)
View(df_high_mpg)


df_high_mpg_hp <- df |>
  filter(mpg > 20, hp > 100)
View(df_high_mpg_hp)


df_high_mpg_hp_cyl <- df |>
  filter(mpg > 20, hp > 100, cyl == 6)
View(df_high_mpg_hp_cyl)



