"2020/12/17" %>% class()

ymd("2020/12/17") %>% class()

"2020/12/17" %>% typeof()

ymd("2020/12/17") %>% typeof()
mdy("12-17-2020")
ymd("2020-12-17")
dmy("17-Dec-2020")

ymd_hms("2020/12/17 10:04:59")
ymd_hms("2020-12-17 10:04:59")
mdy_hms("12-17-2020 10/04/59")
dmy_hms("17-Dec-2020 10-04-59")

make_date(2020,12,17)
make_datetime(2020,12,17,10,4,59)

df=
tibble(
  year=2020,
  month=12,
  day=1:31,
  hour=12
)

df %>%
  mutate(
    ymdhms=
      make_datetime(year, month, day, hour)
  )

date=ymd("20200513")

datetime=as_datetime(date)

datetime %>% class()

as_date(datetime) %>% class()

datetime=ymd_hms("2017/5/17 13:48:27")

date(datetime)

day(datetime)

minute(datetime)

yday(datetime)

wday(datetime)

month(datetime,label=TRUE)

wday(datetime,label=TRUE)

datetime=ymd_hms("2017/5/17 13:48:27")

floor_date(datetime,"minute")

round_date(datetime,"minute")

ceiling_date(datetime,"minute")

floor_date(datetime,"hour")

round_date(datetime,"hour")

ceiling_date(datetime,"hour")

dyears(128)

years(128)

ymd("2016/1/1")+years(1)

ymd("2016/1/1")+dyears(1)

ymd("2017/1/1")+years(1)

ymd("2017/1/1")+dyears(1)
