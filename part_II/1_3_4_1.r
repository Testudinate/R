set.seed(42)

d <- as.data.frame(matrix(rnorm(30),nrow=5))

#find_negative <- function(x){
#  x[x < 0 ]
#}

apply(d, 2, FUN = function(x) x[x<0]#find_negative
      )