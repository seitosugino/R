## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  message = FALSE,
  digits = 3,
  collapse = TRUE,
  comment = "#>"
  )
options(digits = 3)
library(dials)
library(rpart)

## ----cp-----------------------------------------------------------------------
library(dials)
cost_complexity()

## ----cp-range-----------------------------------------------------------------
library(dplyr)
cost_complexity() %>% range_get()
cost_complexity() %>% range_set(c(-5, 1))

# Or using the `range` argument
# during creation
cost_complexity(range = c(-5, 1))

## ----cp-seq-------------------------------------------------------------------
# Natural units:
cost_complexity() %>% value_seq(n = 4)

# Stay in the transformed space:
cost_complexity() %>% value_seq(n = 4, original = FALSE)

## ----cp-sim-------------------------------------------------------------------
set.seed(5473)
cost_complexity() %>% value_sample(n = 4)

## ----rpart, error=TRUE--------------------------------------------------------
library(rpart)
cart_mod <- rpart(mpg ~ ., data = mtcars, control = rpart.control(cp = 0.000001))
cart_mod$cptable
cp_vals <- cart_mod$cptable[, "CP"]

# We should only keep values associated with at least one split:
cp_vals <- cp_vals[ cart_mod$cptable[, "nsplit"] > 0 ]

# Here the specific Cp values, on their natural scale, are added:
mtcars_cp <- cost_complexity() %>% value_set(cp_vals)

## ----rpart-cp-----------------------------------------------------------------
mtcars_cp <- cost_complexity() %>% value_set(log10(cp_vals))
mtcars_cp

## ----rpart-cp-vals------------------------------------------------------------
mtcars_cp %>% value_seq(2)
# Sampling specific values is done with replacement
mtcars_cp %>% 
  value_sample(20) %>% 
  table()

## ----wts----------------------------------------------------------------------
weight_func()

## ----wts-ex-------------------------------------------------------------------
# redefine values
weight_func() %>% value_set(c("rectangular", "triangular"))
weight_func() %>% value_sample(3)

# the sequence is returned in the order of the levels
weight_func() %>% value_seq(3)

## ----unk----------------------------------------------------------------------
mtry()
sample_size()
num_terms()
num_comp()
# and so on

## ----finalize-mtry------------------------------------------------------------
finalize(mtry(), x = mtcars[, -1])

## ----p-set--------------------------------------------------------------------
glmnet_set <- parameters(list(lambda = penalty(), alpha = mixture()))
glmnet_set

# can be updated too
update(glmnet_set, alpha = mixture(c(.3, .6)))

## ----glm-reg------------------------------------------------------------------
grid_regular(
  mixture(),
  penalty(),
  levels = 3 # or c(3, 4), etc
)

## ----glm-rnd------------------------------------------------------------------
set.seed(1041)
grid_random(
  mixture(),
  penalty(),
  size = 6 
)

