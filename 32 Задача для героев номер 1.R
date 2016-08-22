x <- c(16.3, 8.13, 22.92, -200.0, 19.84, -87.0, 22.64)

n <-c()
  qr <- quantile(x, probs = c(0.25, 0.75))
  k=0
  for (i in 1:length(x)){
    otk1 <- qr[2]+1.5 * IQR(x)
    otk2 <- qr[1]-1.5 * IQR(x)
    m = x[i]
    n1 <- c(subset(m,m >= otk2)) #and m <= otk1))
    n2 <-c(subset(n1,n1 <= otk1))
    k = k+1
    n3 <- c(subset(n2,is.numeric(n2)))
    n[k] <- n3
  }
  rez <-c()
  rez <-c(subset(n,n !=is.na(n)))
  print(rez)