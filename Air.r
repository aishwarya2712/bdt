def<-airquality
dim(def)
sapply(def,class)
print("the missing values are")
xcolname<-colnames(def)
x<-colSums(is.na(def))
print(x)

which(is.na(def))
sum(is.na(def))
df1<-as.data.frame(def)
for(i in 1:4)
  df1<-ifelse(is.na(def[,i]),mean(def[,i],na.rm=TRUE),def[i])

df2<-na.omit(def)
print(df2)
