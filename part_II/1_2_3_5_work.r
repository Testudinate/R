get_negative_values <- function(test_data){
  test_data[is.na(test_data)]<-0
  d<-sapply(test_data, FUN = function(x)x[x<0])
  f<-sapply(d,FUN = function(x){if (length(x)>0 & is.null(x)==F){x<-x}})
  f[sapply(f, function(x){is.numeric(x)})]
  
  
}