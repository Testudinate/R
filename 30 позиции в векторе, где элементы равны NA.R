x <- c(1, 2, 3, NA, NA)
#p<- na.position(my_vector)
#which()
#n <-c()
#k=1
#for (i in 1:length(x)){
#  if (is.na(x[i])){
    #print(x[i])
    #print(i)
#    n[k] <- i
#    k=k+1
#  }
#}
#print(n)


my_func <- function(x){
  n <-c()
  k=0
  #for(i in 1:length(AirPassengers))
  for (i in 1:length(x)){
    if (is.na(x[i])){
      #print(x[i])
      #print(i)
      k=k+1
      n[k] <- i
    }
  }
  #print(n)
  return (k)
}

NA.counter <- my_func(x)