library("ggplot2")

obj <- ggplot(data = ToothGrowth, aes(x = supp, y = len))+
  geom_boxplot(aes(fill = factor(dose)))
print(obj)