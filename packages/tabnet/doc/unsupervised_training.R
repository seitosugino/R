## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----setup--------------------------------------------------------------------
#  library(tabnet)
#  library(tidymodels)
#  library(modeldata)
#  library(ggplot2)

## -----------------------------------------------------------------------------
#  set.seed(123)
#  data("lending_club", package = "modeldata")
#  split <- initial_split(lending_club, strata = Class, prop = 9/10)
#  unsupervised <- training(split) %>% mutate(Class=NA)
#  supervised  <- testing(split)

## -----------------------------------------------------------------------------
#  set.seed(123)
#  split <- initial_split(supervised, strata = Class)
#  train <- training(split)
#  test  <- testing(split)

## -----------------------------------------------------------------------------
#  rec_unsup <- recipe(Class ~ ., unsupervised) %>%
#    step_normalize(all_numeric()) %>%
#    prep
#  unsupervised_baked_df <- rec_unsup %>% bake(new_data=NULL) %>% select(-Class)

## -----------------------------------------------------------------------------
#  mod <- tabnet_pretrain(x=unsupervised_baked_df, lending_club, epochs = 25, valid_split = 0.2, verbose = TRUE)

## -----------------------------------------------------------------------------
#  autoplot(mod)

## -----------------------------------------------------------------------------
#  pretrained_model_fit <- tabnet_fit(rec_unsup, train , tabnet_model = mod, valid_split = 0.2, epochs = 50, verbose=TRUE)

## -----------------------------------------------------------------------------
#  autoplot(pretrained_model_fit)

## -----------------------------------------------------------------------------
#  test %>%
#    bind_cols(
#      predict(pretrained_model_fit, test, type = "prob")
#    ) %>%
#    roc_auc(Class, .pred_bad)

## -----------------------------------------------------------------------------
#  vanilla_model_fit <- tabnet_fit(rec_unsup, train , valid_split = 0.2, epochs = 50, verbose=TRUE)
#  

## -----------------------------------------------------------------------------
#  autoplot(vanilla_model_fit)

## -----------------------------------------------------------------------------
#  test %>%
#    bind_cols(
#      predict(vanilla_model_fit, test, type = "prob")
#    ) %>%
#    roc_auc(Class, .pred_good)
#  

