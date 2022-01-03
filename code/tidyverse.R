filter(
  select(txhousing, city, year, month, sales),
  sales >= 100
)

filter(
  txhousing %>% 
  select(city, year, month, sales),
  sales >= 100
)

txhousing %>% 
  select(city, year, month, sales) %>% 
  filter(
    sales >= 100
  )

iris %>% 
  as_tibble()

as_tibble(iris)

tibble(
  No. = 1:3,
  language = c("R","Python","Julia")
)

tribble(
  ~No.,~language,
  1,"R",
  2,"Python",
  3,"Julia"
)
df=
tibble(
  int = c(5,10,76),
  dbl = c(3.124,8.425,5.32),
  chr = c("a","c","E")
)

iris %>% 
  as_tibble() %>% 
  distinct(Species)

data_1=
  iris %>% 
  as_tibble() %>% 
  filter(Species == "setosa")

data_2=
  iris %>% 
  as_tibble() %>% 
  filter(Species == "versicolor")

data_3=
  iris %>% 
  as_tibble() %>% 
  filter(Species == "virginica")

df_rev_1=
df %>% 
  mutate(
    data=
      list(
        data_1,data_2,data_3
      )
  )

iris=
  iris %>% as_tibble()

iris %>% 
  select(Sepal.Length,Species)

df=
  tibble(
    No.=1:5,
    chr=c("one","two","three","four","five")
  )

df %>% 
  mutate(
    a=10:14,
    b=15:19,
    c=20:24,
    d=11111:11115
  )

diamonds %>% 
  rowwise() %>% 
  mutate(
    Mean=
      mean(c(x,y,z))
  ) %>% 
  select(x,y,z,Mean)

ggplot(
  data=iris,
  mapping = 
    aes(x=Sepal.Length,y=Petal.Length)
) +
  geom_point() +
  geom_smooth(method = "lm",se = FALSE) +
  theme(
    panel.background = element_rect(fill = "pink", color = "orange", size = 5),
  axis.text = element_text(size = 15),
  axis.title = element_text(size = 15)
  )
