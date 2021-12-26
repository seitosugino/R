# パッケージのインストールフォルダの作成
if(!file.exists("packages")){
  dir.create("packages")
}

# パッケージのインストールフォルダを指定
.libPaths("packages")

# devtoolsインストール
install.packages("devtools")

# パッケージインストール
devtools::install_version("tidyverse", version = "1.3.1", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_version("tidymodels", version = "0.1.3", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_version("glmnet", version = "4.1-2", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_version("rpart", version = "4.1-15", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
install.packages("RcppEigen")
devtools::install_version("ranger", version = "0.12.1", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE, dependency = FALSE)
devtools::install_version("nnet", version = "7.3-16", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_version("xgboost", version = "1.4.1.1", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
#remotes::install_github("curso-r/treesnip", quiet = TRUE, upgrade = FALSE)
devtools::install_version("lightgbm", version = "3.2.1", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_url('https://github.com/catboost/catboost/releases/download/v0.26/catboost-R-Darwin-0.26.tgz', INSTALL_opts = c("--no-multiarch", "--no-test-load"), quiet = TRUE, upgrade = FALSE)
install.packages("torch")
devtools::install_version("tabnet", version = "0.2.0", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_version("plotly", version = "4.9.4.1", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_version("skimr", version = "2.1.3", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_version("GGally", version = "2.1.2", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_version("DALEX", version = "2.2.1", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)
devtools::install_version("DALEXtra", version = "2.1.1", repos = "https://cran.ism.ac.jp", quiet = TRUE, upgrade = FALSE)

