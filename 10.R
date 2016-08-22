df <- AirPassengers
for (i in 1:(length(df)-9)){
  k = 0
  for (j in (i):(i+9)){
    k = k + df[j]
    #print(df[j])
  }
  p <- (mean(k)/10)
  print(p)
  k = 0
}

