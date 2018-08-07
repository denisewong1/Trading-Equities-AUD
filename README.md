# Trading Equities AUD
Useful Scripts for Trading Database for ASX Stocks
 

# Raw Data
The following scripts scrape webpages from various sources and stores output in a CSV file.

|Data         |Type | R Script  | Source |
|:---|:---|:---|:---|
|Dividends |Current| scrape_DividendsCurr | https://www.morningstar.com.au/Stocks/UpcomingDividends |
|Dividends |Historical| scrape_DividendsHist | http://www.sharedividends.com.au/NAB |
|Dividends |Historical| scrape_DividendsHist2 | http://dividends.com.au/dividend-history/?enter_code=NAB |
|Announcements|Current| scrape_AnnouncementsCurr | https://www.asx.com.au/asx/statistics/todayAnns.do |
|Announcements |Previous |scrape_AnnouncementsPrev | https://www.asx.com.au/asx/statistics/prevBusDayAnns.do |
|News |Recent |TBA | https://www.morningstar.com.au/Stocks/SignalGDigest |
|Broker Reports |Recent |TBA | http://www.sharecafe.com.au/article.asp?a=ALP&p=1 |
|ASX Companies |Current |TBA | https://www.asx.com.au/asx/research/listedCompanies.do |
|Index Constituents |Current |TBA | https://www.marketindex.com.au/asx300 |
|Corporate Calendar |Current |TBA | https://www.morningstar.com.au/Stocks/CorpCalendar |
|Change in Directors Interest |Historical |TBA | https://www.investsmart.com.au/shares/asx-asx/asx-limited/change-in-directors-interest|
|Annual Reports |Historical |TBA | TBA |
|Company Information |Current |TBA | https://www.asx.com.au/asx/share-price-research/company/WBC |
|Short Position Reports |Current |TBA | https://asic.gov.au/regulatory-resources/markets/short-selling/short-position-reports-table/ |


 
# Useful Links
1. Running R scripts from Excel VBA - http://shashiasrblog.blogspot.com/2013/10/vba-front-end-for-r.html
2. Examples of reading webpages with R - https://www.stat.berkeley.edu/classes/s133/Readexample.html 
3. How to extract and clean data from PDF Files in R - https://medium.com/@CharlesBordet/how-to-extract-and-clean-data-from-pdf-files-in-r-da11964e252e
