# What is the smallest positive number that
# is evenly divisible by all of the numbers from 1 to 20?
# 1 to 10 = 2520

x <- 2520
while (sum(x %% 1:20) != 0) {
  x <- x + 2520
}

x
