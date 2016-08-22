#mydata <- as.data.frame(HairEyeColor)
#mydata <- HairEyeColor
#fem <- subset(mydata,Sex %in% c('Female'))
#fem2 <- subset(fem,Hair %in% c('Brown'))
#chisq.test(fem2)
#mydata <- HairEyeColor
#dim(mydata)
#str(mydata)
mydata <- as.data.frame(HairEyeColor)
fem <- subset(mydata,Sex %in% c('Female'))
fem2 <- subset(fem,Hair %in% c('Brown'))
#t1 <-table(fem2$Freq)
chisq.test(fem2$Freq)
