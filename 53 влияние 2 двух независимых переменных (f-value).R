df <-attitude

fit <- lm(df$rating ~ df$complaints*df$critical, data = df)
summary(fit)
print(fit)