known

initial_split=
initial_split(known, prop = 0.8, strata = "Status") %>% 
  with_seed(1234, .)

with_seed(1234, initial_split(known, prop = 0.8, strata = "Status"))

known %>% 
  select(Status)

train = training(initial_split)
test = testing(initial_split)

kfold_splits=
vfold_cv(train, v = 4) %>% 
  with_seed(1234, .)

kfold_splits %>% 
  pluck("splits", 1) %>% 
  analysis()

kfold_splits %>% 
  pluck("splits", 1) %>% 
  assessment()

kfold_splits %>% 
  rowwise() %>% 
  mutate(
    .analysis = list(splits %>% analysis()),
    .assessment = list(splits %>% assessment())
  )

hold_out_split =
validation_split(train, prop = 0.7) %>% 
  with_seed(1234, .)

loo_cv(train) %>% 
  with_seed(1234, .)

initial_split =
  initial_split(known, prop = 0.8, strata = "Status") %>% 
  with_seed(1234, .)

train %>% 
  count(Status) %>% 
  mutate(
    prop = n / sum(n)
  )

stratified_splits %>% 
  rowwise() %>% 
  mutate(
    .analysis = list(splits %>% analysis()),
    .assessment = list(splits %>% assessment()),
    .analysis_prop_good =
      .analysis %>% 
      count(Status) %>% 
      mutate(
        prop = n / sum(n)
      ) %>% 
      filter(Status == "good") %>% 
      pull(prop),
    .assessment_prop_good =
      .assessment %>% 
      count(Status) %>% 
      mutate(
        prop = n / sum(n)
      ) %>% 
      filter(Status == "good") %>% 
      pull(prop)
  ) %>% 
  select(splits, .analysis_prop_good, .assessment_prop_good)

kfold_splits %>% 
  rowwise() %>% 
  mutate(
    .analysis = list(splits %>% analysis()),
    .assessment = list(splits %>% assessment()),
    .analysis_prop_good =
      .analysis %>% 
      count(Status) %>% 
      mutate(
        prop = n / sum(n)
      ) %>% 
      filter(Status == "good") %>% 
      pull(prop),
    .assessment_prop_good =
      .assessment %>% 
      count(Status) %>% 
      mutate(
        prop = n / sum(n)
      ) %>% 
      filter(Status == "good") %>% 
      pull(prop)
  ) %>% 
  select(splits, .analysis_prop_good, .assessment_prop_good)

timeseries_splits =
rolling_origin(
  train %>% rowid_to_column(),
  initial = 100,
  assess = 20,
  skip = 100,
  lag = 0,
  cumulative = FALSE
)

timeseries_splits %>% 
  pluck("splits", 1) %>% 
  analysis()

timeseries_splits %>% 
  pluck("splits", 1) %>% 
  assessment()

timeseries_splits %>% 
  pluck("splits", 2) %>% 
  analysis()

timeseries_splits %>% 
  pluck("splits", 2) %>% 
  assessment()
