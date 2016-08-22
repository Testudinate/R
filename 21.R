df <- ToothGrowth
p1 <- subset(df, supp %in% c("OJ"))
vib1 <- subset(p1, dose %in% c("0.5"))
p2 <- subset(df, supp %in% c("VC"))
vib2 <- subset(p2, dose %in% c("2"))
#sr1 <-mean(vib1$len)
#sr2 <-mean(vib2$len)
rez <-t.test(vib2$len,vib1$len)
#str(rez$statistic)
#print(rez$statistic)
print(rez)

