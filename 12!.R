df <- HairEyeColor
#dim(df[,,'Male'])
man <- df[,,'Male']
print(sum(man['Red','Blue'])/sum(man[,'Blue']))
