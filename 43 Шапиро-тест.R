vec1 <- c(24.985,8.425,14.992,18.096,16.664,2.695,10.919,12.912,
          0.926,-2.941,27.019,31.122,10.999,37.391,0.069,32.565,
          18.737,12.030,15.988,29.278,20.641,17.138,27.051,
          36.600,23.380,12.726,28.429,31.066,41.038,25.110,-4.407,
          20.313,16.531,25.782,24.680,18.422,34.917,22.477,16.982,
          18.531,20.138,30.896,32.664,34.821,11.421,6.543,39.009,
          24.499,13.345,5.280)
vec2 <- c(4.247,3.272,7.384,-3.743,10.315,19.066,-9.901,6.418,
          7.287,2.714,5.895,23.421,12.151,15.379,13.808,4.635,
          11.795,9.409,-0.799,22.509,16.575,6.880,24.828,
          21.983,13.111,0.928,12.409,4.864,6.040,24.878,-5.797,
          -1.974,4.576,8.737,2.773,18.012,16.747,6.928,4.748,
          18.557,8.633,22.755,5.759,26.877,13.310,5.642,14.142,
          10.015,15.290,19.842)
#p1 <- shapiro.test(vec1)
#p2 <- shapiro.test(vec2)

#if ( p1$p.value < 0.05 | p2$p.value < 0.05){
#  fit  <- cor.test(x = vec1, y = vec2, method ="spearman")
#}#
#
#if ( p1$p.value >= 0.05 | p2$p.value >= 0.05){
#  fit  <- cor.test(x = vec1, y = vec2, method ="pearson")
#}
#p1 <- shapiro.test(vec1)
#p2 <- shapiro.test(vec2)
#
#if ( p1$p.value < 0.05 | p2$p.value < 0.05){
#  fit  <- cor.test(x = vec1, y = vec2, method ="spearman")
#
#ifelse ( p1$p.value >= 0.05 | p2$p.value >= 0.05)
#  fit  <- cor.test(x = vec1, y = vec2, method ="pearson")
#}
#rez <- fit
#print(rez$estimate)
#rez <- fit
#print(rez$estimate , round(4))


p1 <- shapiro.test(vec1)
p2 <- shapiro.test(vec2)
#if ( p1$p.value < 0.05 | p2$p.value < 0.05){
#  fit  <- cor.test(x = vec1, y = vec2, method ="spearman")
#}  
#else (p1$p.value >= 0.05 | p2$p.value >= 0.05){
#  fit  <- cor.test(x = vec1, y = vec2, method ="pearson")
#}
#typeof(cor.test(x = vec1, y = vec2, method ="pearson"))
sp <- cor.test(x = vec1, y = vec2, method ="spearman")
pea <-cor.test(x = vec1, y = vec2, method ="pearson")

fit <- ifelse( p1$p.value < 0.05 | p2$p.value < 0.05,
               sp$estimate,
               pea$estimate)

#typeof(fit)
rez <- fit
print(rez$estimate)