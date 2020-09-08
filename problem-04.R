# Find the largest palindrome made from the product of two 3-digit numbers.

library(magrittr)
library(purrr)
library(stringi)

x <- map(900:999, ~ . * 999:900) %>% 
  unlist() %>% 
  as.character()

x[stri_reverse(x) == x] %>% 
  max()
