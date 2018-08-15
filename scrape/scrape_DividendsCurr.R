## this function scrapes upcoming dividend data from the web and saves to 
## csv with current date as prefix
scrape_DividendsCurr <- function() {
    
    fileURL = "https://www.morningstar.com.au/Stocks/UpcomingDividends"
    download.file(fileURL,"doc.html")
    doc.page <- readLines("doc.html")
    
    ## looks for start of pattern and stores it in doc.start
    doc.pattern <- '<td style="padding-left: 10px;"><a href="/Stocks/NewsAndQuotes/'        
    doc.start <- grep(doc.pattern, doc.page)
    doc.repeat <- doc.start[2] - doc.start[1]
    doc.end <- doc.start[1] + length(doc.start)*doc.repeat - 1
    doc.page <- doc.page[doc.start[1]:doc.end]
    
    ## cleans up formatting charcters
    doc.page <- gsub("<.*?>", "", doc.page)
    doc.page <- gsub("^ *", "",doc.page)
    
    ## make into dataframe
    df <- data.frame(matrix(unlist(doc.page), nrow=length(doc.start), byrow=TRUE))
    df <- df[1:6]
    names(df) <- c("ASX Code", "Company Name", "Ex Dividend Date", "Dividend Pay Date","Amount in cents", "Franking %")
    
    ## save to local directory
    filecsv <- paste(format(Sys.Date(),"%Y%m%d"),"_dividends.csv",sep="")
    write.csv(df, filecsv, row.names = FALSE)
    
}

