## this function scrapes historical dividend data by stock code from the 
## from the web and saves to csv with asx code as suffix
scrape_DividendsHist <- function(ASXCode) {
    
    fileURL = paste("http://www.sharedividends.com.au/",ASXCode,sep="")
    download.file(fileURL,"doc.html")
    doc.page <- readLines("doc.html")
    
    ## looks for start of pattern and stores it in doc.start
    doc.pattern <- '<th>Ex Date</th><th>Amount</th><th>Franked</th>'
    doc.start <- grep(doc.pattern, doc.page)
    doc.pattern <- '<p>Looking for <a href='
    doc.end <- grep(doc.pattern, doc.page)
    doc.page <- doc.page[doc.start:doc.end]
    
    ## cleans up formatting charcters
    doc.page <- gsub("<.*?>", " ", doc.page)
    doc.pattern <- "Ex Date*[^>]+Date Payable"
    doc.page <- gsub(doc.pattern, "", doc.page)
    doc.page <- gsub("^ *", "",doc.page)
    
    ## make into dataframe
    df <- data.frame(do.call(rbind, strsplit(doc.page, "  ", fixed=TRUE)))
    names(df) <- c("Ex Date", "Amount", "Franked", "Franking Credit","Books Close", "Date Payable")
    
    ## save to local directory
    filecsv <- paste(ASXCode,"_dividends.csv",sep="")
    write.csv(df, filecsv, row.names = FALSE)
    
}

