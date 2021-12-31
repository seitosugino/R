diamonds %>%
  group_nest(cut) %>%
  mutate(
    fig=
      data %>%
      map(
        ~
          .x %>%
          ggplot(aes(x=carat,y=price))+
          geom_point(color="orange")
      )
  )

diamonds %>%
  group_nest(cut) %>%
  mutate(
    fig=
      list(cut,data) %>%
      pmap(
        ~
          ..2 %>%
          ggplot(aes(x=carat,y=price))+
          geom_point(color="orange")+
          labs(title = ..1)
      )
  )

diamonds %>%
  group_nest(cut) %>%
  pwalk(
    ~
      ..2 %>%
      write_csv(str_c(..1,"_data.csv"))
  )