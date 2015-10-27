В векторе  my_vector отберите только те наблюдения, которые отклоняются 
от среднего не больше чем на одно стандартное отклонение. 

Сохраните эти наблюдения в новую переменную и напечатайте ее при помощи команды print() .  

mean(x)  среднее значение вектора x
sd(x)    стандартное отклонение вектора x
abs(n)   абсолютное значение числа n

mean1 <- mean(my_vector)
sd1 = sd(my_vector)
abs1 = abs(my_vector-mean1)
n <- my_vector[abs1<sd1]
print(n)