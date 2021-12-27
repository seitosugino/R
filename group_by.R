df =
  tibble(
    class=c("a","b","c","c","a","c","b","a","c","b","a"),
    gender=c("M","F","F","M","F","M","M","F","M","M","F"),
    height=c(162,150,168,173,162,198,182,154,175,160,172)
  )

df %>%
  group_by(class) %>%
  summarise(
    mean=
      mean(height)
  )

df %>%
  group_by(class,gender) %>%
  summarise(
    mean=
      mean(height)
  ) %>%
  ungroup()

df %>%
  group_by(class) %>%
  summarise(
    Max=max(height),
    Q3=quantile(height,0.75),
    Mean=mean(height),
    Median=median(height),
    Q1=quantile(height,0.25),
    Min=min(height),
    sd=sd(height),
    n=n()
  )
