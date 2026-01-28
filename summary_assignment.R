library(dplyr)


data(mtcars)
df <- mtcars |> as_tibble()


overall <- df |> 
  summarise(
    mean_mpg = mean(mpg),
    sd_mpg = sd(mpg),
    n_cars = n()
  )


by_cyl <- df |> 
  group_by(cyl) |> 
  summarise(
    mean_mpg = mean(mpg),
    mean_hp = mean(hp),
    n = n()
  )


print(overall)
print(by_cyl)
