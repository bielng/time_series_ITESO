library(dplyr)


data <- data.frame(
  name = c("Ana", "Luis", "Maria"),
  age = c(20, 22, 19),
  grade = c(85, 90, 70)
)


data

data %>% select(name, grade)

data2 <- data %>%
  mutate(passed = grade >= 80)

data2




data3 <- data %>%
  mutate(grade = grade + 5)


data3





