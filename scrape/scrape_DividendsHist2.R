## this function scrapes historical dividend data by stock code from the 
## from the web and saves to csv with asx code as suffix
scrape_DividendsHist2 <- function(ASXCode) {
    
    fileURL = paste("http://www.dividends.com.au/dividend-history/?enter_code=",ASXCode,sep="")
    download.file(fileURL,"doc.html")
    doc.page <- readLines("doc.html")
    
    ## looks for start of pattern and stores it in doc.start
    doc.pattern <- '<th title="Return on Investment">RoI</th>'
    doc.start <- grep(doc.pattern, doc.page)+1
    doc.page <- doc.page[doc.start]
    
    ## cleans up formatting charcters
    doc.page <- gsub("<.*?>", " ", doc.page)
    doc.page <- gsub(" - ", " 0 ",doc.page)
    doc.page <- gsub("  *", " ",doc.page)
    doc.page <- gsub("^ *", "",doc.page)
    doc.page <- gsub(" *$", "",doc.page)
    
    ## make into dataframe
    df <- as.data.frame(t(matrix(do.call(rbind, strsplit(doc.page, " ", fixed=TRUE)),nrow = 10)))
    names(df) <- c("Ex Date", "Books Close", "Date Payable", "Amount", "Franked", "Franking Credit","Gross Dividend", "Cum Div Price", "Gross Yield", "ROI")
    
    ## save to local directory
    filecsv <- paste(ASXCode,"_dividends.csv",sep="")
    write.csv(df, filecsv, row.names = FALSE)
    
}