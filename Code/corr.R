###################################################################################
## Programming Assignment 1 - R Programming                                      ##
## Program Name - corr                                                           ##
## Author       - Ram Nadakuduru                                                 ##
## Date         - 2014-08-17                                                     ##
## Version History                                                               ##
## 0.0   2014-08-17     Program Created                                          ##
###################################################################################
corr <- function(directory,threshold=0){
        opvec <- vector(mode = "numeric")
        monitorID <- 1:332
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
                dframe <- read.table(tempdir,header=TRUE,sep=",")
                x <- complete.cases(dframe[1:nrow(dframe),])
                y <- x[x==TRUE]
                if(length(y) > threshold) {
                        avec <- dframe[[2]]
                        bvec <- dframe[[3]]
                        avec <- avec[x]
                        bvec <- bvec[x]
                        c <- cor(avec, bvec, use="everything")
                        opvec <- c(opvec,c)
                }
        }
        opvec
}