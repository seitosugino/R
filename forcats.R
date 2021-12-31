df=
  tibble(
    name=
      c("nanami","rina","kumi","mizu","rika","hiyori","yuna","hina","risa","yui","hikaru","karin") %>% factor(),
    group=
      c("nogi","sakura","hinata","sakura","sakura","hinata","nogi","hinata","sakura","sakura","sakura","sakura") %>% factor(),
    age=
      c(27,23,24,23,25,18,17,19,22,21,19,19)
  )

df$name

df$group

df$group %>%
  fct_inorder()

df$group %>%
  fct_infreq()

df %>%
  group_by(group) %>%
  count()

df$group %>%
  fct_rev()

df$group %>%
  fct_shift(n=2)

df$group %>%
  fct_shift(n=-1)

df$group %>%
  fct_relevel("nogi","hinata","sakura")

df$group %>%
  fct_relevel("nogi")

df$name %>%
  fct_reorder(df$age)

df %>%
  arrange(age)

df %>%
  ggplot(aes(x=name,y=age))+
  geom_point()

df %>%
  ggplot(aes(x=fct_reorder(name,age),y=age))+
    geom_point()

df$group %>%
  fct_recode(
    "NOGI"="nogi",
    "SAKURA"="sakura",
    "HINATA"="hinata"
  )

df$group %>%
  fct_collapse(
    keyaki=c("sakura","hinata")
  )

df %>%
  count(group)

df$group %>%
  fct_lump(other_level = "noginata")
