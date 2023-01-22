nums <- c()

for (i in 1:50) {
  if (i %% 3 == 0 || i %% 5 == 0 || i %% 10 == 0) {
    nums <- c(nums, i)
  }
}

print(nums)
