library(ggplot2)
df <- iris
df1 <- subset(df,Species != "setosa")
#hist(df1$Sepal.Length)
#ggplot(df1, aes( x = Sepal.Length))+
#  geom_histogram(fill = "white", col = "black", bidwidth = 0.4)+
#  facet_grid(Species ~ .)

#ggplot(df1, aes(Sepal.Length, fill = Species))+
#  geom_density(alpha = 0.5)

#ggplot(df1, aes(Species, Sepal.Length))+
#  geom_boxplot()
#проверка нормальности распределения
#распределение не отличается от нормального, т.к 0.14
#shapiro.test(df1$Sepal.Length)

#shapiro.test(df1$Sepal.Length[df1$Species =="virginica"])

#гомогенность дисперсии (соблюдается, т.к. p-value = 0.14 и больше 0,05 )
#bartlett.test(Sepal.Length ~ Species, df1)

#test1 <- t.test(Sepal.Length ~ Species, df1) #отклонить нулевую гипотезу

#str(test1)
#test1$p.value

test1 <- t.test(Sepal.Length ~ Species, df1, var.equal = T) 

#t.test(df1$Sepal.Length, mu = 8) #mean(Sepal.Length) 6262

#t.test(df1$Petal.Length,df1$Petal.Width,paired = T)

#--------------------------------------------------------

ggplot(df1, aes( Species, Sepal.Length)) +
  stat_summary(fun.data = mean_cl_normal, geom = "errorbar",
               width = 0.1) + 
  stat_summary(dun.y = mean, geom = "point", size =4)

ggplot(df1, aes( Species, Sepal.Length)) +
  stat_summary(fun.data = mean_cl_normal, geom = "pointrange",
               size =2)

 test2 <- wilcox.test( Petal.Length ~ Species,df1)  #���������� ����
 test2$statistic
 test2$p.value
 
 #����������������� ������
 
 ggplot(df1, aes( Species, Petal.Length))+
   geom_boxplot()
 
 #test2 <- wilcox.test( Petal.Length ~ Species,df1)
