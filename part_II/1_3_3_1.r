set.seed(42)

d <- as.data.frame(matrix(rnorm(30),nrow=5))

#my_fun <- function(x){
#  y <- x * 2
#}
#print(my_fun(1:10))

my_list <- list()
for (i in seq_along(d)){
  temp_col <- d[,i]
  neg_numbers <- temp_col[temp_col<0]
  my_list[[i]] <- neg_numbers
}
names(my_list) <- colnames(d)

print(my_list)


