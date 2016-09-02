head(airquality)

apply(airquality,2,mean, na.rm = T)
colMeans(airquality,na.rm = T)
#colSums()
#rowMeans()
#rowSums()