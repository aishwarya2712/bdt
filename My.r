ta()
head(mtcars)
# Number of rows (observations)
rownum <- nrow(mtcars)
# Number of columns (variables)
colnum <- ncol(mtcars)

x<- data.frame(mtcars)
print(x)
automatic <-0 
manual <-0
for (i in 1:rownum){
  ifelse( x[i,9] == 1, automatic <- automatic + 1, manual <- manual +1)
  ifelse (automatic > manual,print("There are more automatic transmission type"),print("There are more manual transmission type") )
}
HorsePower <- x[,4]
Weight <- x[,6]
scatter.smooth(HorsePower,Weight, span=2/3, degree = 1, family =c("symmetric","gaussian"))

x[,2]<- as.integer(x[,2])
x[,8]<- as.integer(x[,8])
x[,9]<- as.integer(x[,9])
x[,2] <= 5

mtcars[mtcars$cylinders <=5 ]
