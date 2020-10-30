# Find the sum of the digits in the number 100!

library(magrittr)
library(stringr)
# Unfortunately setting 'options(scipen = 999)' does not work with this problem.
# Most direct way using 'gmp' package.
library(gmp)

as.bigz(1:100) %>%
  prod() %>%
  as.character() %>%
  str_split("") %>%
  unlist() %>%
  as.numeric() %>%
  sum()
