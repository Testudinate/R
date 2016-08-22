my_vector <- c(14, 18, 20, 19, 25, 25, 26, 
               18, 20, 17, 21, 23, 14, 20, 
               18, 24, 19, 21, 26, 19, 17, 
               NA, NA, NA, 33, NA, NA, NA, 
               NA, 23, NA, 14, 16, NA, NA, 
               16, NA, NA, NA, 22)

rez <- ifelse(is.na(my_vector), mean(my_vector, na.rm = T),my_vector)
print(rez)