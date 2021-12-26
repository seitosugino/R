diamonds %>%
  filter(
    carat <= 0.25
  )

df =
  tibble(
    No = 1:7,
    gender =
      c("M", "F", "F", "M", "F", "M", "M"),
    height =
      c(165, 150, 170, 175, 165, 195, 180)
  )

df %>%
  filter(
    gender == "F"
  )

df %>%
  filter(
    c(FALSE, TRUE,TRUE,FALSE,TRUE,FALSE,FALSE)
  )

diamonds %>%
  filter(
    price == 337
  )

diamonds %>%
  filter(
    depth >= 62
  )

diamonds %>%
  filter(
    between(carat,0.23,0.27)
  )

diamonds %>%
  filter(
    carat >= 0.23, carat <= 0.27
  )

diamonds %>%
  filter(
    cut >= "Good"
  )

diamonds %>%
  filter(
    color != "E"
  )
diamonds %>%
  filter(
    color %in% c("I","J")
  )

diamonds %>%
  filter(is.na(cut))

df =
  tibble(
    col =
      c(1,3,NA,5,4,8,NA,9,NA)
  )

df %>%
  filter(is.na(col))

diamonds %>%
  filter(
    depth >= 62 , color == "H"
  )

diamonds %>%
  filter(
    depth >= 62 | color == "H"
  )

diamonds %>%
  filter(
    xor(depth >= 62 , color == "H")
  )


diamonds %>%
  filter(
    !(depth >= 62 & color == "H")
  )

diamonds$cut %>% levels()
