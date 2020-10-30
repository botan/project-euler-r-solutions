# What is the sum of the digits of the number 2^1000?

library(magrittr)
library(stringr)

options(scipen = 999)

2 ** 1000 %>% 
  as.character() %>% 
  str_split("") %>% 
  unlist() %>% 
  as.numeric() %>% 
  sum()
