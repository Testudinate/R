library(ggplot2)
data(diamonds)
str(diamonds)

#min_size <-numeric(nrow(diamonds))
#for (i in 1:nrow(diamonds)){
#  min_size[i]<-min(diamonds[i,8:10])
#}

min_size2 <- apply(diamonds[,8:10], 1, min)
print(min_size2)