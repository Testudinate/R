df <- HairEyeColor
#dim(df[,,'Male'])
woman <- df[,,'Female']
sum_woman <-sum(woman[,'Green'])
print(sum_woman)
