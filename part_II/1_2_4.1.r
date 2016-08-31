d<-matrix(rnorm(30),nrow = 5)

apply(d, MARGIN = 1,FUN = sd)
apply(d, MARGIN = 2,FUN = sd)

apply(mtcars, MARGIN = 2,FUN = sd)
#apply(mtcars, MARGIN = 1,FUN = sd)