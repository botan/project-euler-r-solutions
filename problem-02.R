# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million,
# find the sum of the even-valued terms.

x <- c(1, 2)
while (max(x) < 4e6) {
  x <- append(x, rev(x)[1] + rev(x)[2])
}

sum(x[x %% 2 == 0])
