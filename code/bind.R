df_name_1=
  tibble(
    key=1:2,
    name=c("asuka","rina")
  )

df_name_2=
  tibble(
    key=1:3,
    name=c("hinako","yui","kyouko")
  )

df_group=
  tibble(
    group=
      c("nogi","sakura","nogi","sakura","hinata")
  )

df_name=
bind_rows(df_name_1,df_name_2)

df_name_group=
bind_cols(df_name,df_group)

bind_rows(df_name_1,df_name_2,df_name_1)
bind_cols(df_name,df_group,df_name)
