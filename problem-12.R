# What is the value of the first triangle number to have over five hundred divisors?

divisors <- 
current <- 0L
while (length(divisors) <= 500L) {
  triangle <- sum(1:current)
  sub_triangle <- floor(sqrt(triangle)) # for efficiency
  numbers <- 1:sub_triangle
  i <- which(triangle %% numbers == 0L)
  divisors <- c(numbers[i], triangle / numbers[i])
  current <- current + 1L
}

triangle
