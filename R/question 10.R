library(dplyr)

data(iris)

iris_with_mean <- iris %>%
  group_by(row_number()) %>%
  summarize(Means_of_obs = mean(c(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)))

iris_with_mean
