#dataset_11508_12

df <- read.table("C:\\dataset_11508_12.txt", sep=' ' )  
fit  <- lm(V1 ~ V2, df)
summary(fit)
