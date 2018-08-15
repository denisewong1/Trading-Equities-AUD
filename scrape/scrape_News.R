## this function scrapes recent news from the morningstar pages
scrape_News <- function() {
    
    library(gsubfn)
    fileURL = "https://www.morningstar.com.au/Stocks/SignalGDigest"
    download.file(fileURL,"doc.html")
    doc.page <- readLines("doc.html")
    
    ## looks for start of pattern and stores it in doc.start
    doc.pattern <- '<h2 class="SectionHeading" style="width: 370px;">ASX300 News Digest</h2>'
    doc.start <- grep(doc.pattern, doc.page)
    doc.pattern <- '<div id="RowOne_2" style="width: 175px;">'
    doc.end <- grep(doc.pattern, doc.page)
    doc.page <- doc.page[doc.start:doc.end]
    
    ## tidy up patterns
    doc.pattern <- '<a class=\"bluetext\" href=\"'
    doc.page <- gsub(doc.pattern, "https://www.morningstar.com.au",doc.page)
    doc.pattern <- '\">Read more</a>'
    doc.page <- gsub(doc.pattern,"",doc.page)
    doc.page <- gsub("^  *", "",doc.page)    
    doc.page <- gsub("&nbsp;", " ", doc.page)
    doc.page <- gsub("<.*?>", "", doc.page)
    doc.page <- doc.page[-grep("^$",doc.page)]
    doc.page <- doc.page[2:length(doc.page)]
    doc.pattern <- "[0-9][0-9] [A-Z][a-z][a-z] 20[0-9][0-9]"
    doc.page <- doc.page[-grep(doc.pattern,doc.page)]
    
    ## finds links only
    doc.pattern <- "[0-9][0-9]:[0-9][0-9]"
    doc.start <- grep(doc.pattern,doc.page)
    doc.pattern <- "https://www.morningstar.com.au" 
    doc.end <- grep(doc.pattern,doc.page)
    
    ## make data frame
    df <- data.frame(matrix("",nrow = length(doc.start),ncol = 6))
    names(df) <- c("Date","Time","ASXCode","Title","News","Link")
    df$Title <- doc.page[doc.start+1]
    df$Time <- doc.page[doc.start]
    df$News <- doc.page[doc.end-1]
    df$Link <- doc.page[doc.end]
    doc.pattern <- "https://www.morningstar.com.au/Stocks/SignalGNews/" 
    df$Date <- gsub(doc.pattern,"",df$Link)
    df$Date <- gsub("/.*?$","",df$Date)
    df$Date <- as.Date(df$Date,"%Y%m%d")
    df$ASXCode <- t(strapplyc(df$Time, "(.*) (.*)", simplify = TRUE))[,2]
    df$Time <- substr(df$Time,start=1, stop=5)
    
    ## save to local directory
    COB <- format(df$AnnDate[1],"%Y%m%d")
    filecsv <- "todays_news.csv"
    write.csv(df, filecsv, row.names = FALSE)
    
}


