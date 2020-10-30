# How many Sundays fell on the first of the month during the twentieth century
# (1 Jan 1901 to 31 Dec 2000)?

library(magrittr)
library(lubridate)

seq(dmy("01-01-1901"), dmy("31-12-2000"), "month") %>%
  wday() %>%
  extract(. == 1) %>%
  sum()
