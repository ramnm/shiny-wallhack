##Week 1 class practice program
x <- 1:10L
print(x)
print(attributes(x))
#
y <- c(0.567,3.140)
print(y)
#
ch <- vector("character", length=10)
ch[1] <- "Hello"
ch[2] <- "World!!!"
print(ch)
#
log <- vector("logical",length=5)
log[1] <- TRUE
log[2] <- FALSE
print(log)
#attributes function
#na,nan values
x1 <- c(NA,NaN,1,2,3,4,454)
print(x1)
is.na(x1)
is.nan(x1)
class(x1)
#list variables
l <- list("list",1,TRUE)
print(l)
#factor variables
f <- factor(c("yes","no","maybe","maybe"))
print(f)
table(f)
unclass(f)
#subsetting lists
lx <- list(foo = 1:4, bar = 0.6, baz="i love baz")
print(lx[c(1,3)])
print(lx[2])
print(lx[[1]][[3]])
print(lx[[c(1,3)]])
print(lx$f)  #partial matching
print(lx[["b", exact=FALSE]])  #partial matching
#removing NA values
log <- c(FALSE,TRUE)
sam <- c(2,5,7)
sam[sam > 2] <- 1
sam
dam <- 22
sam + dam
rbind(sam,dam)
print(sam[!log])
print(complete.cases(sam,dam))
#reading data
tab1 <- read.table("hw1_data.csv",header=TRUE, sep=",")
vec1 <- is.na(tab1[[1]])
vec2 <- tab1[[1]]
sum(vec2[!vec1])
mean(vec2[!vec1])
print(tab1)
#q18
tab1 <- read.table("hw1_data.csv",header=TRUE, sep=",")
vec1 <- subset(tab1,Ozone > 31 & Temp > 90)$Solar.R
mean(vec1)
#q19
tab1 <- read.table("hw1_data.csv",header=TRUE, sep=",")
vec1 <- subset(tab1,Month == 6)$Temp
vec1
mean(vec1)
#q20
tab1 <- read.table("hw1_data.csv",header=TRUE, sep=",")
vec1 <- subset(tab1,Month == 5)$Ozone
vec2 <- is.na(vec1)
max(vec1[!vec2])
