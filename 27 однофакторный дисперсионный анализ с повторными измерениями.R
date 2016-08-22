df <- read.csv("c:\\Pillulkin.csv")
str(df)
df$patient <- as.factor(df$patient)

#fit3b <- aov(temperature ~ df$pill*df$patient + Error(df$temperature/(df$pill*df$patient)), data = df)
#summary(fit3b)

#fit3b <- aov(df$temperature ~ df$pill*df +Error(df$temperature/(df$pill)), data = df)
#summary(fit3b)

#fit1 <- aov(temperature ~ pill, data = df)
#summary(fit1)

fit2 <- aov(temperature ~ pill + Error(patient/pill), data = df)
summary(fit2)