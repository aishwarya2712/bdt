data()

head(mtcars)
r<-nrow(mtcars)
c<-ncol(mtcars)
print(paste("no of rows= ",r))
print(paste("no of columns= ",c))

automatic=0
manual=0
x<-data.frame(mtcars)
for(i in 1:r)
  if(x[i,9] == 1) 
    automatic <- automatic+1
else
  manual<-manual+1
print(paste("no of automatic= ",automatic))
print(paste("no of manual= ",manual))

horsepower<-x[,4]
weight<-x[,6]
scatter.smooth(horsepower,weight,span=2/3,degree=1,family=c("symmetric","gaussian"))

x[,2]<-as.integer(x[,2])
x[,9]<-as.integer(x[,9])
x[,8]<-as.integer(x[,8])

newmtc<-data.frame(x)
print(newmtc)
z=0

z<-subset(newmtc,cyl<5)
print(z)





