# The largest prime factor of the number 600851475143?

max_num <- 600851475143
result <- 2

while (max_num > result) {
  if (max_num %% result == 0) {
    max_num = max_num / result
  } else {
    result = result + 1
  }
}

result
