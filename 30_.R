

library(fpp3)

aus_production |>
  features(Gas, features = guerrero)
#> # A tibble: 1 × 2
#> 
#> 