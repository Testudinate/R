df <- mtcars

fit  <- glm(am ~ disp + vs + mpg, df, family = "binomial")
#summary(fit)
print(fit$coefficients)
