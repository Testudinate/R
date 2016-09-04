d <- data.frame(X1 = c(-1, -2, 0), X2 = c(10, 4, NA), X3 = c(-4, NA, NA))
positive_sum = function(d){
  d[is.na(d)]<-0
  d<-sapply(d, FUN=function(x)x[x>0])
  f<-sapply(d, FUN=function(x) sum(x),simplify=F)
}
print(positive_sum(d))