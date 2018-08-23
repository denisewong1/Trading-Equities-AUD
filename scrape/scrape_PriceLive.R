


scrape_PriceLive <- function(ASXCode) {
    
    library(jsonlite)     
    ##fileURL = "https://www.asx.com.au/asx/1/share/NEA/"
    fileURL <- "https://www.asx.com.au/asx/1/share/"
    fileURL <- paste(fileURL,ASXCode,"/",sep="")
    download.file(fileURL,"doc.html")
    doc.page <- fromJSON("doc.html",flatten = TRUE)    
    
    df <- as.data.frame(doc.page) 
    df
    
}