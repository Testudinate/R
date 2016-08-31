iris_num <- iris[sapply(iris, is.numeric)]
#md_df_num2<-md_df[lapply (md_df, is.integer)]


col_median <- apply(iris_num, MARGIN = 2, median,na.rm = T)
                    
#print(col_median)

str(iris_num)

#n<-median(md_df_num[5],na.rm = FALSE)

#?sapply

#median
