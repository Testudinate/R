df <-airquality
library(psych)
#descr <-describe(x = df[,-c(8,9)], )
#new_var <- c(subset(df,Month %in% c(8),Wind))
#per <- subset(df,Month %in% c(8))
#descr <- describeBy(per$Wind, group = per$Month, mat = T, digits = 1)
descr <- describeBy(df[,c(1,2,3,4,5,6)], group = df$Month, mat = T, digits = 1)
print(descr)

#?describeBy
#View(descr)
#new_var = c(subset(df,Month %in% c(7,8,9)))
#aggregate( disp ~ hp + am , df, sd)
#aggregate(x = df$am, by = list(df$hp,df$disp),FUN = sd)
#aggregate(df[,c(3,4)], by = list(df$am), FUN = sd)
#ozone_with_na= c(subset(new_var,new_var$Ozone !='NA',new_var$Ozone))
#print(ozone_with_na)
#rez <- aggregate( x = new_var$Ozone, by = list(new_var$Month(new_var$Ozone !='NA'), FUN = length)
#rez<-aggregate( x =new_var$Ozone, by = list (new_var$Month), length, simplify = TRUE)