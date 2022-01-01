df = tibble(
  x=c(1,3,2,8,10),
  y=c(10,4,NA,6,NA),
  z=c(NA,8,7,8,NA)
)

df %>%
  drop_na()

df %>%
  drop_na(z)

df %>%
  replace_na(list(y=5,z=3))

df %>%
  replace_na(list(
    y=mean(df$y,na.rm=TRUE),
    z=mean(df$z,na.rm=TRUE)
  ))

df %>%
  replace_na(list(
    y=mean(.$y,na.rm=TRUE),
    z=mean(.$z,na.rm=TRUE)
  ))

df %>%
  fill(y,z,.direction="down")

df %>%
  fill(y,z,.direction="up")
