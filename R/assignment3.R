datasets::iris
subset(iris,  Species == 'versicolor', select = c(Sepal.Width, Sepal.Length, Species))
