resid.norm  <- function(fit){
  # put your code here  
  library(ggplot2)
  df<-c()
  for (i in 1:length(fit$resid)){
    p <- fit$resid[[i]]
    df$lm1_resid[i]<-p
  }
  df<-as.data.frame(df)
  rez <- shapiro.test(df$lm1_resid)
  if (rez$p.value < 0.05){
    my_plot <- ggplot(df, aes(x = lm1_resid)) + 
      geom_histogram(fill = 'red')  
  }
  if (rez$p.value >= 0.05){
    my_plot <- ggplot(df, aes(x = lm1_resid) ) + 
      geom_histogram(fill = 'green')   
  }
  return(my_plot)
}

fit <- lm(mpg ~ disp, mtcars)
my_plot <- resid.norm(fit)
my_plot