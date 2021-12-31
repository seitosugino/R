str_length(c("a","the","apple"))

str_c("nogi","sakura","hinata")

str_c("nogi","sakura","hinata",sep="_")

vec_1=c("nogi","sakura","hinata")
vec_2=c("mai","ponpon","sarina")
str_c(vec_1,vec_2,sep="-")

vec_1=c("nogi","sakura","hinata")
str_c(vec_1,collapse = "...")

str_sub("qwertyuiop@",start = 2,end = 5)

str_sub("qwertyuiop@",start = -8,end = -5)

vec_group=c("nogi","sakura","hinata")
str_detect(vec_group,pattern = "a")

vec_group=c("nogi","sakura","hinata")
str_subset(vec_group,pattern = "a")

vec_group=c("nogi","sakura","hinata")
str_extract(vec_group,pattern = "a")

vec_group=c("nogi","sakura","hinata")
str_extract_all(vec_group,pattern = "a")

str_extract_all(vec_group,pattern = "a",simplify = TRUE)

vec_name=c("asuka","mizuki","minami")
str_replace(vec_name,pattern = "a",replacement = "-")
str_replace_all(vec_name,pattern = "a",replacement = "-")
str_replace_all(vec_name,c("a"="A","m"="M"))

vec_name=c("asuka","mizuki","minami")
str_split(vec_name,pattern = "u")
str_split(vec_name,pattern = "u",simplify = TRUE)