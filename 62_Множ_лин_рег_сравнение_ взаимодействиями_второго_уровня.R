df <- LifeCycleSavings

model <- lm(sr ~ (LifeCycleSavings$pop15 + LifeCycleSavings$pop75 + LifeCycleSavings$dpi+LifeCycleSavings$ddpi)^2,LifeCycleSavings ) 

#model_full <- lm(sr ~ (df$pop15 + df$pop75 + df$dpi+df$ddpi)^2, df) 
summary(model)
