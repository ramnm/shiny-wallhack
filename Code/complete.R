###################################################################################
## Programming Assignment 1 - R Programming                                      ##
## Program Name - complete                                                       ##
## Author       - Ram Nadakuduru                                                 ##
## Date         - 2014-08-17                                                     ##
## Version History                                                               ##
## 0.0   2014-08-17     Program Created                                          ##
###################################################################################
complete <- function (directory,monitorID=1:332){
        options(stringsAsFactors=FALSE)
        opframe <- data.frame(ID=character(), nobs=numeric())
        for(i in seq_along(monitorID)){
                tempdir <- paste0("~/shiny-wallhack/",directory, "/", collapse = NULL)
                if (monitorID[i] < 10) {
                        filename <- paste0("00",monitorID[i],".csv", collapse = NULL)
                } else if (monitorID[i] < 100) {
                        filename <- paste0("0",monitorID[i],".csv", collapse = NULL)
                } else {
                        filename <- paste0(monitorID[i],".csv", collapse = NULL)
                }
                tempdir <- paste0(tempdir,filename, collapse = NULL)
                dframe <- read.table(tempdir,header=TR
                                     
                                     UE,sep=",")
                x <- complete.cases(dframe[1:nrow(dframe),])
                y <- x[x==TRUE]
                count <- length(y)
                newrow <- c(monitorID[i],count)
                opframe <- rbind(opframe,newrow)
        }
        colnames(opframe) = c("ID","nobs")
        opframe
}