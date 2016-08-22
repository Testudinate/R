high.corr <- function(x){
  # put your code here  
  my_df <- data.frame()
  my_df <- x
  #my_df <- iris[,-5]
  #my_df <-(swiss)
  library(psych)
  n <-c()
  n <- corr.test(my_df)
  nn <-as.data.frame(n$r)
  for (i in 1:length(nn)){
    for (j in 1:length(nn[[i]])){
      if (nn[[i]][j] == 1){
        nn[[i]][j] = 0
      }
    }
  }
  max = 0
  for (i in 1:length(nn)){
    row1 = colnames(nn[i])
    for (j in 1:length(nn[[i]])){
      if (abs(nn[[i]][j]) > max ){
        max = abs(nn[[i]][j])
        row11 = row1 
        col1 = colnames(nn[j])
      }
    }
  }
  return(c(row11,col1))
}


high.corr(iris[,-5])
