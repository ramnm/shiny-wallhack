###################################################################################
## Programming Assignment 1 - R Programming                                      ##
## Program Name - pollutantmean                                                  ##
## Author       - Ram Nadakuduru                                                 ##
## Date         - 2014-08-17                                                     ##
## Version History                                                               ##
## 0.0   2014-08-17     Program Created                                          ##
###################################################################################
pollutantmean <- function(directory,pollutant,monitorID=1:332){
        total <- 0
        count <- 0
#        print(pollutant)
#        print(directory)
#        print(monitorID)
        for(i in seq_along(monitorID)){
                if (monitorID[i] < 10) {
                        tempdir <- paste0("~/shiny-wallhack/",directory,"/00",monitorID[i],".csv", collapse=NULL)
                } else if (monitorID[i] < 100) {
                        tempdir <- paste0("~/shiny-wallhack/",directory,"/0",monitorID[i],".csv", collapse=NULL)
                } else {
                        tempdir <- paste0("~/shiny-wallhack/",directory,"/",monitorID[i],".csv", collapse=NULL)
                }
                
                dframe <- read.table(tempdir,header=TRUE,sep=",")
                c <- names(dframe[1,])
                l <- c[c == pollutant]
                vec1 <- dframe[,l]
#                print(vec1)
                x <- complete.cases(vec1)
                total <- sum(vec1[x]) + total
                count <- length(vec1[x]) + count
        }
        mn <- total/count
        mn
}