library(fpp3)

tourism



key_vars(tourism)

key_data(tourism)

distinct(tourism, State)


distinct(filter(tourism, State == "Tasmania"),Region)


summarise(group_by(as_tibble(filter(tourism, State == "Tasmania", 
                                    Region == "East Coast")), Purpose),
          mean_trips = mean(Trips))

tourism |>
    filter(State == "Tasmania",
            Region == "East Coast") |>
    as_tibble() |>
    group_by(Purpose) |>
    summarise(mean_trips = mean(Trips))


tourism |> 
  filter(State == "Tasmania",
         Region == "East Coast") |> 
    autoplot(Trips) +
    facet_wrap(vars(Purpose), scale = "free_y") +
    theme(legend.position = "none")


aus_production |> 
  autoplot(Gas)


aus_production |> 
  autoplot(Gas) +
  geom_point()




library(tidyquant)
library(plotly)




































