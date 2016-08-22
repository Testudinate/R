#fit <- lm(mpg ~ disp, mtcars)
#my_plot <- resid.norm(fit)
#my_plot

  library(ggplot2)
  #df <- mtcars[,c(1,3)]
  df <- mtcars[,c(1,6)]
  #df <- lm(mpg ~ wt, mtcars)
  lm1 <- lm (df[,c(1)] ~ df[,c(2)], df)
  #summary(fit$)
  df$lm1_resid <- lm1$resid
  rez <- shapiro.test(df[,c(3)])
  if (rez$p.value < 0.05){
    my_plot <- ggplot(df, aes(x = lm1_resid)) + 
      geom_histogram(fill = 'red')
    
  }
  if (rez$p.value >= 0.05){
    my_plot <- ggplot(df, aes(x = lm1_resid) ) + 
      geom_histogram(fill = 'green')
    
  }
  print(my_plot)
  
  
  