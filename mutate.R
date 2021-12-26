diamonds %>%
  mutate(
    new =
      "test"
  ) %>%
  select(new,everything())

diamonds %>%
  mutate(
    new =
      2*depth+5*table
  ) %>%
  select(new,everything())

diamonds %>%
  distinct(color)

diamonds %>%
  mutate(
    new=
      if_else(
        color=="E",
        "E",
        "not E"
      )
  ) %>%
  select(new,everything())

diamonds %>%
  mutate(
    new=
      case_when(
        color=="E"~"E",
        color=="I"~"I",
        TRUE~"not_E_I"
      )
  ) %>%
  select(new,everything())
