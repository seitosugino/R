iris =
  iris %>% as_tibble()

iris %>%
  select(Sepal.Length, Species)

iris =
  iris %>%
  as_tibble()

iris %>%
  select(
    Sepal.Length, Species
  )

iris %>%
  select(
    1,5
  )

iris %>%
  select(Sepal.Length:Petal.Width)

iris %>%
  select(-Sepal.Length,-Petal.Width)

iris %>%
  select(starts_with("Sepal"))

iris %>%
  select(ends_with("Width"))

iris %>%
  select(contains("1.L"))

iris %>%
  select(matches("^Se.*en.*"))

var = c("Sepal.Length","Petal.Length")
iris %>%
  select(Sepal.Length,Petal.Length)

iris %>%
  select(all_of(var))

iris %>%
  select(everything())

iris %>%
  select(Species, everything())

iris %>%
  select(where(is.double))
