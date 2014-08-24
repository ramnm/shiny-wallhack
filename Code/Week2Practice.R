#Week 2 practice
x <- 1:10
if (x>10){
        x <- 0
}
#
x <- c("man")
y <- c("killer")
print(paste(x,y,".csv",sep="", collapse = NULL))
##
temp <- read.table("C:/Users/Maruthi/Documents/shiny-wallhack/specdata/001.csv", header= TRUE,sep=",")
x <- complete.cases(temp[1:nrow(temp),])
y <- x[x==TRUE]
        avec <- temp[[2]]
        bvec <- temp[[3]]
        c <- cor(x, y, use="everything")
##
c <- cor(temp[[2]],temp[[3]],na.rm)
t <- temp[[2]]
class(t)
length(t)
x <- complete.cases(temp[1:nrow(temp),])
y <- x[x==TRUE]
vec1 <- temp[[2]]
x <- complete.cases(vec1)
a <- vec1[x]
print(a)
class(y)
length(y)
#
pollutant <- "sulfate"
dframecols <- ncol(temp)
        c <- names(temp[1,])
print(c)
        l <- c[c == pollutant]
        print(l)
        vec1 <- temp[,l]
print(vec1)
        total <- 0
 count <- 0
        temptotal <- sum(vec1)
        total <- temptotal + total
        tempcount <- length(vec1)
        count <-  tempcount + count
print(total)
print(count)
y <- names(temp[2,])
class(y)
vec1 <- vector(mode= "numeric")
##
##
x <- matrix(1:9,nrow=3,ncol=3)
y <- solve(x)
