df <- read.csv("c:\\grants.csv")
#str(df)
df$status <- as.factor(df$status)
levels(df$status) <- c("Not funded","Funded") #номинативная переменная
t1 <-table(df$status) #таблица кол-ва данных
dim(t1) #2 уровня
#таблица по двум переменным 
t2 <- table(df$status,df$field)
#dim(t2) #2 строчки поддерживаемая или нет, а в столбцах область || двумерная таблица
t2 <- table(status = df$status, field = df$field)

#пропорция.Процент соотношения
#prop.table(t2)
#prop.table(t2,1)
#prop.table(t2,2) #суммировать по 2 столбцу; по каждой области 100%

#трехмерные таблицы
t3 <- table (Years = df$years_in_uni, Field =df$field, Status =df$status)
#t3
#dim(t3)
#2 таблицы: поддерживаемы заявки \ неподдерживаемые заявки; трехмерная таблица

#---------------------------------------
#barplot(t1)
#barplot(t2)
#barplot(t2, legend.text = TRUE, args.legend = list (x = "topright"))
#barplot(t2, legend.text = TRUE, args.legend = list (x = "topright"), beside = TRUE)

#mosaicplot(t2)

#binom.test(x = 5, n = 20, p = 0.5)
#binom.test(t1)

chisq.test(t1)

chi<-chisq.test(t1)
chi$exp #ожидаемые
chi$obs #наблюдаемые значения

chisq.test(t2) #

#fisher

fisher.test(t2)