# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

for (a in 1:1000) {
  for (b in 1:1000) {
    c = 1000 - a - b
    if (a ** 2 + b ** 2 == c ** 2) {
      x <- prod(a, b, c)
    }
  }
}

x
