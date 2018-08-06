# Trading Equities AUD
Useful Scripts for Trading Database for ASX Stocks
 

# Raw Data
The following scripts scrape webpages from various sources and stores output in a CSV file.

|Data         |Type | R Script  | Source |
|:---|:---|:---|:---|
|Dividends |Current| scrape_DividendsCurr | https://www.morningstar.com.au/Stocks/UpcomingDividends |
|Dividends |Historical| scrape_DividendsHist | http://www.sharedividends.com.au/NAB |
|Dividends |Historical| scrape_DividendsHist2 | http://dividends.com.au/dividend-history/?enter_code=NAB |
|Announcements|Current| TBA | https://www.asx.com.au/asx/statistics/todayAnns.do |
|Announcements |Previous |scrape_Announcements | https://www.asx.com.au/asx/statistics/prevBusDayAnns.do |

 
# Useful Links
1. Running R scripts from Excel VBA - http://shashiasrblog.blogspot.com/2013/10/vba-front-end-for-r.html
2. Examples of reading webpages with R - https://www.stat.berkeley.edu/classes/s133/Readexample.html 
3. How to extract and clean data from PDF Files in R - https://medium.com/@CharlesBordet/how-to-extract-and-clean-data-from-pdf-files-in-r-da11964e252e
