df <- read.csv("c:\\Pillulkin.csv")
str(df)
df$patient <- as.factor(df$patient)

fit2 <- aov(temperature ~ pill*doctor + Error(patient/(pill*doctor)), data = df)
summary(fit2)