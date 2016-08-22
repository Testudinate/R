df <- (mtcars[,c(1,3)])
df1 <- df[,c(1)]
df2 <- df[,c(2)]
df_rez <-c()
rez <- lm(scale(df1) ~ scale(df2), df)
df_rez[1] <- rez$coefficients[1]
df_rez[2] <- rez$coefficients[2]
print(df_rez)
