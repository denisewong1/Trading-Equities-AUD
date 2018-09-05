## this function scrapes asx list of all stocks and saves to csv with date 
## as prefix
scrape_ASXCurr <- function() {
    
    fileURL = "https://www.asx.com.au/asx/research/listedCompanies.do"
    docURL = "https://www.asx.com.au/asx/research/ASXListedCompanies.csv"
    doc.page <- read.csv(file=docURL, skip = 2, header=TRUE, sep=",")
    
    ## save to local directory
    filecsv <- paste(format(Sys.Date(),"%Y%m%d"),"_ASXCurr.csv",sep="")
    write.csv(doc.page, filecsv, row.names = FALSE)
    
}