diamonds %>%
  rowwise() %>%
  mutate(
    Mean=
      mean(c(x,y,z))
  ) %>%
  select(x,y,z,Mean)

df =
  tibble(
    class=c("a","b","c","c","a","c","b","a","c","b","a"),
    gender=c("M","F","F","M","F","M","M","F","M","M","F"),
    height=c(162,150,168,173,162,198,182,154,175,160,172)
  )

df %>%
  nest_by(class) %>%
  pluck("data",1)

df %>%
  group_nest(class)

df %>%
  group_by(class) %>%
  summarise(
    mean=
      mean(height)
  )

df %>%
  nest_by(class) %>%
  mutate(
    mean=
      mean(data$height)
  )

make_fig=
  function(df,class){
    fig=
      df %>%
      ggplot(aes(x=carat,y=price))+
      geom_point(color="orange")+
      labs(title=class)+
      theme(
        axis.text=element_text(size=15),
        axis.title=element_text(size=15),
        plot.title=element_text(hjust = 0.5)
      )
    return(fig)
  }

diamonds_1=
diamonds %>%
  nest_by(cut) %>%
  mutate(
    func=list(make_fig)
  )

make_fig

diamonds_2=
diamonds_1 %>%
  mutate(
    fig=
      list(
        func(df=data,class=cut)
        )
  )

{patchwork}

diamonds_2 %>%
  pull(fig) %>%
  wrap_plots()

diamonds_3=
diamonds_2 %>%
  mutate(
    model=
      list(
        lm(
          formula=price~carat,
          data=data
        )
      )
  )
