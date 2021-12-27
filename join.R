df_name=
  tibble(
    key=c(1, 1, 3, 2, 5),
    name=c("asuka","yuuki","siho","rina","manaka")
  )

df_group=
  tibble(
    key=1:4,
    group=c("nogi","sakura","hinata","yoshimoto")
  )

inner_join(df_name, df_group)

left_join(df_name, df_group)

right_join(df_name, df_group)

full_join(df_name, df_group)

df_name %>%
  left_join(df_group)
