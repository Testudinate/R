normality.test  <- function(x){
  df <- x
  n <- c()
  for (i in 1:length(df)){
    rez <- shapiro.test(df[,c(i)])
    for (j in i:i){
      n[j] <- j
      names(n)[j] = names(df)[i]
    }
    n[i] <- rez$p.value
  }
    return(n)
  }

  mm <-normality.test(iris[,-5])
  print(mm)