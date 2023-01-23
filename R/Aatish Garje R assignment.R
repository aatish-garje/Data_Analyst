#Question 1:

nums <- c()

for (i in 1:50) {
  if (i %% 3 == 0 || i %% 5 == 0 || i %% 10 == 0) {
    nums <- c(nums, i)
  }
}

print(nums)


#Question 3:

my_data_frame <- data.frame(col1 = c(1, 2, 3, 4, 5),
                            col2 = c("a", "b", "c", "d", "e"),
                            col3 = c(T, F, T, T, F))

print(my_data_frame)

row2 <- my_data_frame[2,]

my_data_frame <- my_data_frame[-2,]

col2 <- my_data_frame[,2]

my_data_frame <- my_data_frame[,-2]

my_data_frame$col4 <- c(6,7,8,9,10)

my_data_frame <- rbind(my_data_frame,c(6,"f",F))

#Question 4:

my_num <- readline(prompt = "Enter a value: ")

if (my_num < 0) {
  print("The number is negative.")
} else {
  if (my_num > 0) {
    print("The number is positive.")
  } else {
    print("The number is zero.")
  }
}

#Question 5:

value <- readline(prompt = "Enter a value: ")

if (typeof(value) == "character") {
  if (is.na(as.numeric(value))) {
    if (grepl("[^a-zA-Z0-9]", value)) {
      print("The value is a special character.")
    } else {
      print("The value is a character.")
    }
  } else {
    print("The value is numeric.")
  }
}

#Question 7:

x= c(1,5.6,3,10,3.5,5)
print("Original vector-1:")
print(x)
rv = rev(x)
print("The said vector in reverse order:")
print(rv)

#Question 8:

var <- c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")
Mode(var)
#imported package DescTools for calculating mode

#Question 9:

datasets::iris
summary(iris)
filtered1 <- filter(iris, Species == "setosa")
filtered1

#Question 10:

library(dplyr)

data(iris)

iris_with_mean <- iris %>%
  group_by(row_number()) %>%
  summarize(Means_of_obs = mean(c(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)))

iris_with_mean

#Question 11:

datasets::iris
subset(iris,  Species == 'versicolor', select = c(Sepal.Width, Sepal.Length, Species))

#Question 12:

datasets::mtcars
install.packages("ggplot")
install.packages("tidyverse")


my_histplot <- ggplot(mtcars,aes(x=mpg)) + geom_histogram(binwidth=5)
my_histplot

my_boxplot <- ggplot(mtcars,aes(x=cyl,y=mpg)) + geom_boxplot() + xlab('Cylinders') + ylab('Miles per Gallon')
my_boxplot

my_scatplot <- ggplot(mtcars,aes(x=wt,y=mpg)) + geom_point()
my_scatplot + xlab('Weight (x 1000lbs)') + ylab('Miles per Gallon')

my_lineplot <- ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy))
my_lineplot

table1 <- table(mtcars$cyl)
my_bargraph <- barplot(table1)
