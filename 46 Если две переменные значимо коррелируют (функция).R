
  #x = iris[,c(1,4)]
  x = iris[,1:2]
  df <- x
  p1 <- df[,c(1)]
  p2 <- df[,c(2)]
  pea <- cor.test(x = p1, y = p2, method ="pearson")
  #ifelse (pea$p.value <0.05,fit1,fit2 )
  if (pea$p.value <0.05) {
    fit1  <- lm(p1 ~ p2, df)
    df$fit <- fit1$fitted.values
  }
  if (pea$p.value >=0.05) {
    df  <- "There is no sense in prediction"
  }
  print(df)
  return (df)
    

regr.calc <- function(x){
  # put your code here  
  
}