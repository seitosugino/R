ggplot(
  data=iris,
  mapping=
    aes(x=Sepal.Length,y=Petal.Length)
)

ggplot(
  data=iris,
  mapping=
    aes(x=Sepal.Length,y=Petal.Length)
)+
  geom_point()+
  geom_smooth(method = "lm",se=FALSE)+
  theme(
    panel.background = 
      element_rect(fill="pink",color="orange", size=5),
    axis.text=element_text(size=15),
    axis.title=element_text(size=15)
  )

df = nycflights13::weather %>%
  drop_na()

df %>%
  ggplot(
    aes(x=humid)
  )+
  geom_histogram(bins=10)

df %>%
  ggplot(
    aes(x=humid)
  )+
  geom_histogram(binwidth=20)

df %>%
  distinct(origin)

df %>%
  ggplot(
    aes(x=humid,fill=origin)
  )+
  geom_histogram(bins=10)

df %>%
  ggplot(
    aes(x=humid,fill=origin)
  )+
  geom_density(alpha=0.6)

df %>%
  ggplot(
    aes(x=temp,y=humid,color=origin)
  )+
  geom_point()

GGally::ggpairs()

df %>%
  select(temp:wind_dir,origin) %>%
  ggpairs(aes(color=origin))

df %>%
  select(time_hour,temp) %>%
  ggplot(
    aes(x=time_hour,y=temp)
  )+
    geom_line()+
    scale_x_datetime(date_labels = "%Y-%m")
  