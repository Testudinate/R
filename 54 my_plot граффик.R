library(ggplot2)
my_plot <- ggplot(mtcars,aes(x = wt, y = mpg, colour = factor(am))) + 
  geom_smooth(method = 'lm')

