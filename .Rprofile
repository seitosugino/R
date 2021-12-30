# 「packages」フォルダ内のパッケージを使用するよう設定
.libPaths("packages")

# パッケージ読み込み
library(lightgbm) # lightgbmを一番先に読み込まないと使用する際にエラーが発生．．．
library(stats)
library(MASS)
library(tidyverse)
library(tidymodels)
library(treesnip)
library(plotly)
library(skimr)
library(GGally)
library(withr)
library(tabnet)
library(modeldata)
library(patchwork)

# なぜか.RprofileからDALEXtraを読み込もうとするとエラーが発生．．．
#library(DALEXtra)

# データ定義：クレジットデータ
data("credit_data")

credit_data = tibble(credit_data)

# 既知データ
known =
credit_data %>%
  initial_split(known, prop = 0.8, strata = "Status") %>%
  with_seed(1234, .) %>%
  training()

# 未知データ
unknown =
  credit_data %>%
  initial_split(known, prop = 0.8, strata = "Status") %>%
  with_seed(1234, .) %>%
  testing()

# 初期分割データ
initial_split =
  initial_split(known, prop = 0.8, strata = "Status") %>%
  with_seed(1234, .)

# 学習データ
train = training(initial_split)

# 評価データ
test = testing(initial_split)

# 分割データ
stratified_splits =
  vfold_cv(train, v = 4, strata = "Status") %>%
  with_seed(1234, .)

# 図の書式
theme_set(theme_linedraw(base_size = 25, base_family = "Helvetica"))


