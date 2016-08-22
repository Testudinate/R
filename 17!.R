library(ggplot2)
df <- mtcars
fem <-table(df$am,df$vs)
rez <- fisher.test(fem)
print(rez$p.value)