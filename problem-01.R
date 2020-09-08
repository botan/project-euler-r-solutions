# Find the sum of all the multiples of 3 or 5 below 1000.

library(magrittr)

c(seq.int(3, 999, 3),
  seq.int(5, 999, 5)) %>%
  unique() %>%
  sum()
