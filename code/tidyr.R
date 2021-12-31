df_wide=tibble(
  store=c("A","B","C"),
  orange=c(100,70,120),
  apple=c(150,90,80)
)

df_long=
df_wide %>%
  pivot_longer(
    cols=c(orange,apple),
    names_to = "fruit",
    values_to = "price"
  )

df_long %>%
  pivot_wider(
    names_from = fruit,
    values_from = price
  )

df_unite=
  tibble(
    No.=1:5,
    date=
      c("2019-1","2020-3","2017-12","2018-9","2015-4")
  )

df_separate=
df_unite %>%
  separate(
    col=date,
    into=c("year","month"),
    sep="-"
  )

df_separate %>%
  unite(
    col=date,year,month,
    sep="-"
  )
