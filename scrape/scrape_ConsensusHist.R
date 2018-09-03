## this function scrapes table of consensus broker recommendataions from the
## market index website

scrape_ConsensusHist <- function() {

    library(stringr)     
    fileURL = "https://www.marketindex.com.au/analysis/consensus-recommendations-27-august-2018"
    COB <- "20180827"
    download.file(fileURL,"doc.html")
    doc.page <- readLines("doc.html")    

    ## looks for start of pattern and stores it in doc.start
    doc.pattern <- 'sortable consensus-blog-table sticky-enabled'
    doc.start <- grep(doc.pattern, doc.page)
    doc.pattern <- 'NOTE: Share prices as at previous close'
    doc.end <- grep(doc.pattern, doc.page)
    doc.page <- doc.page[doc.start:doc.end]

    ## cleans up formatting charcters
    doc.page <- gsub("<.*?>", "", doc.page)
    doc.end <- length(doc.page)-2
    doc.page <- doc.page[8:doc.end]

    ## make into dataframe
    df <- data.frame(matrix(unlist(doc.page), nrow=length(doc.page)/7, byrow=TRUE))
    names(df) <- c("ASXCode", "Company", "Price", "Buy","Hold", "Sell", 
            "Consensus")

    ## save to local directory
    filecsv <- paste(COB,"_consensus.csv",sep="")
    write.csv(df, filecsv, row.names = FALSE)
            
}