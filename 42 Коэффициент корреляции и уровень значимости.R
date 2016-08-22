
corr.calc <- function(x){
  #library(psych)
  n <-c()
  df <- x
  p1 <- df[,c(1)]
  p2 <- df[,c(2)]
  fit <- cor.test(x = p1, y = p2)
  n[1] <- fit$estimate
  n[2] <- fit$p.value
  return(n)
}

corr.calc( mtcars[, c(1,5)] )

