# Which starting number, under one million, produces the longest Collatz sequence?

library(magrittr)
library(purrr)

limit <- 1e3L - 1L
collatz_len <- function(x) {
  chain <- c() 
  while (x > 1L) {
    if (x %% 2L == 0L) {
      x <- x / 2L
    } else {
      x <- x * 3L + 1L
    }
    chain <- c(chain, x)
  }
  length(chain)
}

limit - map(limit:1L, collatz_len) %>% 
  which.max() + 1L
