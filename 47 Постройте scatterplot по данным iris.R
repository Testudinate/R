library(ggplot2)
df <-iris
#my_plot <- ggplot(df, aes(Sepal.Width, Petal.Width, col = Species))+
 # geom_point(size = 5)+
  #geom_smooth()

my_plot <- ggplot(df, aes(Sepal.Width, Petal.Width, col = Species))+
  geom_point(size = 5)+
  geom_smooth()
print(my_plot)

