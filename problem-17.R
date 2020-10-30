# If all the numbers from 1 to 1000 (one thousand) inclusive
# were written out in words, how many letters would be used?
# Not: Do not count spaces or hyphens!

units <- nchar("onetwothreefourfivesixseveneightnine")
teens <- nchar("teneleventwelvethirteenfourteenfifteensixteenseventeeneighteennineteen")
tens <- nchar("twentythirtyfortyfiftysixtyseventyeightyninety")
hundred <- nchar("hundred")
and <- nchar("and")
one_thousend <- nchar("onethousend")

one_thousend +
  (hundred * 9 + units) * 100 + and * 99 * 9 +
  (tens * 10 + teens + units * 9) * 10
