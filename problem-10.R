# Find the sum of all the primess below two million.

sieve_sum <- function(n) {
  primes <- c(2, seq(3, n, 2)) 
  current <- 3
  while (current < sqrt(n)) {
    primes <- primes[primes %% current != 0 | primes == current]
    current <- primes[which(primes == current) + 1]
  }
  sum(primes)
}

sieve_sum(2e6)
