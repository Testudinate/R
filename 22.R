df <- read.csv("c:\\lekarstva.csv")
str(df)
rez <-t.test(df$Pressure_before,df$Pressure_after,paired = T)
print(rez$statistic)