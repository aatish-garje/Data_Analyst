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
