df <- mtcars[,c(1,3,4,5,6)]
f1 <- "wt ~" 
max <- 0
for(i1 in 0:1) {
  for(i2 in 0:1) {
    for(i3 in 0:1) {
      for(i4 in 0:1) {  
        s <- i1 + i2 + i3 + i4
        print(s)
        if(s < 2) next
        f2 <- ''
        if(i1) f2 <- paste(f2, "+ mpg")
        if(i2) f2 <- paste(f2, "+ disp")
        if(i3) f2 <- paste(f2, "+ drat")
        if(i4) f2 <- paste(f2, "+ hp")                        
        #print(f2)
        f2 <- substr(f2,4,nchar(f2))
        #print(f2)
        f3 <- paste(f1,f2)
        #print(f3)
        fit1 <- lm(f3,df)
        #print(fit1)
        rs <- summary(fit1)$adj.r.squared
        #print(rs)
        if (rs >max){
          max = rs
          model = f3
        }
        cat(f2,rs,"\n")
      }
    }
  }
}
cat(max, model, "\n")