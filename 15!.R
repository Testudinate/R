#library("ggplot2")
#mydata <- as.data.frame(HairEyeColor)
#obj <- ggplot(data = mydata, aes(x = , y = Freq)) + 
#  geom_bar(stat="identity", position = "dodge") + 
#  scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))
library("ggplot2")
mydata <- as.data.frame(HairEyeColor)
fem <- subset(mydata,Sex %in% c('Female'))
#fem1 <- subset(x = mydata, Sex='Female')
#fem2 <- subset(x = mydata, Sex='Male')

#df <- HairEyeColor
#dim(df[,,'Male'])
#fem <- mydata[,,'Female']
#obj <- ggplot(data = fem, aes(x = Hair, y = Freq, fill=Eye)) + geom_bar(stat="identity", position = "dodge" ) + scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))
#print(obj)

