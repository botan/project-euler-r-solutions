# What is the 10001st prime number?

candidates <- !vector("logical", 2e5)
candidates[1] <- FALSE

i <- 2L
while (i < sqrt(length(candidates))) {
  candidates[seq(i * 2, length(candidates), by = i)] <- FALSE
  primes <- as.numeric(which(candidates == TRUE))
  i <- primes[primes > i][1]
}

primes[10001]
