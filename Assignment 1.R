# Question 0
firstname<-"Weiyang"
lastname<-"Wang"
print(paste(firstname,lastname))
studentID<-1505028
print(studentID)

# Question 1
library(foreign)
df.dta<-read.dta(file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_dta.dta")
df.csv<-read.csv(file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_CSV.csv")
df.td<-read.table(file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt")
df.RData<-load(url("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_RData.RData"))
print(df.RData) #the name assigned to RData file is NHIS_2007_RData

# Question 2
download.file("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_dta.dta","/Documents/2016Winter294/Assignment1/2016Econ294Assignment1/NHIS_2007_dta.dta")
download.file("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_CSV.csv","/Documents/2016Winter294/Assignment1/2016Econ294Assignment1/NHIS_2007_csv.csv")
download.file("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt","/Documents/2016Winter294/Assignment1/2016Econ294Assignment1/NHIS_2007_TSV.txt")
download.file("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_RData.RData","/Documents/2016Winter294/Assignment1/2016Econ294Assignment1/NHIS_2007_RData.RData")
# dta file is 189KB, txt file is 138KB, csv file is 138KB, RData file is 45KB. The RData file is the smallest.

# Question 3
typeof(NHIS_2007_RData)
print("type is list")
length(NHIS_2007_RData)
print("length is 9")
dim(NHIS_2007_RData)
print("dim is 4758 9")
nrow(NHIS_2007_RData)
print("number of row is 4758")
ncol(NHIS_2007_RData)
print("number of column is 9")
summary(NHIS_2007_RData)

# Question 4
df.org<-read.dta(file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")
str(df.org)
print("There are 1119754 observations and 30 variables")
summary(df.org$rw)
print("the mininum is 1.8, mean is 19.8, median is 15.9, maximum is 354.8. 1st Qu is 10.7, 3rd Qu is 24.4")
print("there are 521279 NA's")

# Question 5
v<-c(1,2,3,4,5,6,7,4,NULL,NA)
print(length(v))
# the number reported is different with the number of values since R ingores Null value.
print(mean(v,na.rm=TRUE))

# Question 6
x<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
print(t(x))
e<-eigen(x)
print(e$values)
print(e$vectors)
y<-matrix(c(1,2,3,3,2,1,2,3,0),nrow=3,ncol=3,byrow=TRUE)
inv<-solve(y)
print(inv)
print(y%*%inv)
# the new matrix is called identity matrix

# Question 7
carat<-c(5,2,0.5,1.5,5,NA,3)
cut<-c("fair","good","very good","good","fair","ideal","fair")
clarity<-c("SI1","I1","VI1","VS1","IF","VVS2",NA)
price<-c(850,450,450,NA,750,980,420)
diamonds<-data.frame(carat,cut,clarity,price,check.rows=FALSE)
