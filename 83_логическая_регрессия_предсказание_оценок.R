my_df <- read.csv("C:\\data.csv")
#str(my_df)
fit  <- glm(admit ~ rank + gpa, my_df, family = "binomial")
#summary(fit)
my_df$prob  <- predict(object = fit,newdata = my_df, type = "response")
#my_df1 <- data.frame()
#my_df1 <- c(subset(my_df,admit =='NA'))
k=0
i=1
for (i in 1:length(my_df$admit)){
  if (is.na(my_df$admit[i]) & my_df$prob[i] >= 0.6){
    k = k+1
  }
}
print(k)

