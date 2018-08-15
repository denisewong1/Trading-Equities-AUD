## this function scrapes asx announcements for prev trading day from the 
## from the web and saves to csv file with today as prefix
scrape_AnnouncementsCurr <- function() {
    
    library(stringr)     
    fileURL = "https://www.asx.com.au/asx/statistics/todayAnns.do"
    download.file(fileURL,"doc.html")
    doc.page <- readLines("doc.html")
    
    ## looks for start of pattern and stores it in doc.start
    doc.pattern <- '<announcement_data>'
    doc.start <- grep(doc.pattern, doc.page)
    doc.pattern <- '</announcement_data>'
    doc.end <- grep(doc.pattern, doc.page)
    doc.page <- doc.page[doc.start:doc.end]
    
    ## cleans up formatting charcters
    doc.page <- gsub("[\t]*", "",doc.page)
    doc.page <- gsub("-->", "", doc.page)
    doc.page <- gsub("<!--", "", doc.page)
    doc.pattern <- "vertical-align"
    doc.page[grep(doc.pattern, doc.page)] <- "TRUE"
    doc.page <- gsub("&nbsp;", "FALSE", doc.page)
    doc.page <- gsub("^  *", "",doc.page)
    doc.page <- gsub("<.*?>", "", doc.page)
    doc.page <- doc.page[-grep("^$",doc.page)]
    
    ## looks for pattern again
    doc.pattern <- 'Headline'
    doc.start <- grep(doc.pattern, doc.page)
    doc.end <- length(doc.page)
    doc.page <- doc.page[doc.start[1]+1:doc.end]
    doc.pattern <- 'PDF'
    doc.start <- grep(doc.pattern, doc.page)
    doc.end <- doc.start[length(doc.start)]+3
    doc.page <- doc.page[1:doc.end]
    
    ## make into dataframe
    df <- data.frame(matrix(unlist(doc.page), nrow=length(doc.page)/12, byrow=TRUE))
    df <- df[-c(5,6,9,11)]
    names(df) <- c("ASX Code", "AnnDate", "AnnTime", "PriceSens","AnnLink", "AnnTitle", "Page","AnnPDFSize")
    
    ## tidy data for weblinks and date
    df$AnnLink <- str_replace_all(df$AnnLink,"\"","")
    df$AnnLink <- gsub(">","",df$AnnLink)
    df$AnnLink <- gsub("href=","https://www.asx.com.au",df$AnnLink)
    df$AnnDate <- as.Date(df$AnnDate,"%d/%m/%Y")
    
    ## https://www.asx.com.au/asx/statistics/displayAnnouncement.do?display=pdf&idsId=02007218
    
    
    ## save to local directory
    COB <- format(df$AnnDate[1],"%Y%m%d")
    filecsv <- "todays_announcements.csv"
    write.csv(df, filecsv, row.names = FALSE)
    
}

