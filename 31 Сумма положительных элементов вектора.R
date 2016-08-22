x <- c(1, 2, 3, NA, NA, -1, -2 ,3)
#sum = 0
n <- sum(c(subset(x,x>0)))
#p = 0
print(n)


#for (i in 1:length(x)){
  #p <- x[i]
  #if (p > 0){
  #  n <- p
  #}
  #print(p)
#}
#print(sum)


filtered.sum <- function(x){
  # put your  code here  
  sum = 0
  for (i in 1:length(x)){
    if (x[i]>0){
      sum = sum + x[i]
    }
  }
  return sum
}