df <-attitude

model_full <- lm(rating ~ ., df) 
summary(model_full)

model_null <- lm(rating ~ 1, df)
summary(model_null)

#scope <- list(lower = model_null, upper = model_full)

ideal_model <- step(model_full, direction = 'backward')

res <- anova(model_full, ideal_model)

print(res)
