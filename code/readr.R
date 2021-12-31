economics_long

economics_long %>%
  write_csv("csv/df_economics_long.csv")

getwd()

economics_long %>%
  write.csv("csv/df_economics_long.csv",
            fileEncoding = "shift-jis",
            row.names = FALSE)

read_csv("csv/df_economics_long.csv")

read_csv("csv/df_economics_long.csv",
         col_types=cols(date=col_character()
                        )
         )

read_csv("csv/df_economics_long.csv",
         col_types=cols(date="c")

read_csv("csv/df_economics_long.csv",
         col_types = cols(.default = "c")) %>%
  type_convert()

read_csv("csv/df_economics_long.csv",
         locale = locale(encoding = "shift-jis"))

df_economics_long_nest=
economics_long %>%
  nest_by(variable)

df_economics_long_nest %>%
  write_rds("csv/df_economics_long_nest.rds")

read_rds("csv/df_economics_long_nest.rds")