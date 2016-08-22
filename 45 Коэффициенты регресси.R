library(ggplot2)
df <- diamonds
df1 <- subset(df,cut == "Ideal" & carat =="0.46")
fit  <- lm(df1$price ~ df1$depth, df1)
print(fit$coefficients)