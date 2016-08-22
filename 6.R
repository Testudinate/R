df <- airquality
library(ggplot2)
ggplot(df, aes(x = Month, y = Ozone)) + 
  geom_point( )
