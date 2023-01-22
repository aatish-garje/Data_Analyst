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
