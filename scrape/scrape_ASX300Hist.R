## this function scrapes asx list of all stocks and saves to csv with date 
## as prefix
scrape_ASX300Hist <- function() {
    
    fileURL <- "https://www.https://www.asx300list.com/"
    doc.date <- format(Sys.Date(),"%Y%m01")
    docURL <- paste("https://www.asx300list.com/uploads/csv/", doc.date, 
                "-asx300.csv",sep="")
    doc.page <- read.csv(file=docURL, skip = 1, header=TRUE, sep=",")
    
    ## remove extra columns
    doc.page <- doc.page[1:5]
    
    ## save to local directory
    filecsv <- paste(doc.date,"_ASX300Hist.csv",sep="")
    write.csv(doc.page, filecsv, row.names = FALSE)
    
}