diamonds %>%
  arrange(depth)

diamonds %>%
  arrange(desc(depth))

diamonds %>%
  arrange(depth,table)

diamonds %>%
  distinct(cut,.keep_all=FALSE)

diamonds %>%
  distinct(cut,.keep_all=TRUE)

diamonds %>%
  distinct(cut,color)

diamonds %>%
  distinct(color)

diamonds %>%
  group_by(color) %>%
  summarise(across(depth:price,mean))

diamonds %>%
  group_by(color) %>%
  summarise(
    depth=mean(depth),
    table=mean(table),
    price=mean(price)
  )

diamonds %>%
  group_by(color) %>%
  summarise(across(where(is.numeric),
                   ~mean(.x)/sd(.x)
                   )
            )

diamonds %>%
  mutate(
    across(where(is.numeric),
    ~(.x-mean(.x))/sd(.x)
  )
)
