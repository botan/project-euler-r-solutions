# Find the difference between the sum of the squares of the
# first one hundred natural numbers and the square of the sum.

library(magrittr)

x <-
  1:100 %>%
  raise_to_power(2) %>% 
  sum()

y <- 
  1:100 %>%
  sum() %>% 
  raise_to_power(2)

y - x
