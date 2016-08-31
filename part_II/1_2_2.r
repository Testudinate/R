library(ggplot2)
data(diamonds)
str(diamonds)

min_size <-c()

for (i in 1:nrow(diamonds)){
  min_size<-c(min_size,min(diamonds[i,8:10]))
}

print(min_size)