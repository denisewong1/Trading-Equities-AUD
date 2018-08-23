
scrape_DividendsHist3 <- function(ASXCode) {
    
    library(jsonlite)     
    fileURL <- "https://www.asx.com.au/asx/1/company/"
    fileURL <- paste(fileURL,ASXCode,"/dividends",sep="")
    download.file(fileURL,"doc.html")
    doc.page <- fromJSON("doc.html",flatten = TRUE)    
    
    df <- as.data.frame(doc.page) 
    df
    
    ## save to local directory
    filecsv <- paste(ASXCode,"_dividends.csv",sep="")
    write.csv(df, filecsv, row.names = FALSE)
    
}