Code for scraping websites in R  


# Raw Data
The following scripts scrape webpages from various sources and stores output in a CSV file.

### Useful Forum Posts
https://forums.whirlpool.net.au/archive/2552938
https://forums.whirlpool.net.au/archive/2678938
https://forums.whirlpool.net.au/archive/2729490
https://forums.whirlpool.net.au/archive/2639466
https://support.google.com/docs/answer/3093281?visit_id=1-636453716143099183-4190368376&hl=en-GB&rd=1
https://eodhistoricaldata.com/knowledgebase/excel-vba-stock-api-example/

|Data         |Type | R Script  | Source |
|:---|:---|:---|:---|
|Dividends |Current| scrape_DividendsCurr | https://www.morningstar.com.au/Stocks/UpcomingDividends |
|Dividends |Historical| scrape_DividendsHist | http://www.sharedividends.com.au/NAB |
|Dividends |Historical| scrape_DividendsHist2 | http://dividends.com.au/dividend-history/?enter_code=NAB |
|Dividends |Historical| TBA | https://www.asx.com.au/asx/1/company/MQG/dividends |
|Prices |Live| scrape_PriceLive | https://www.asx.com.au/asx/1/share/NEA/ |
|Prices |Live| TBA | https://www.asx.com.au/asx/markets/equityPrices.do?by=asxCodes&asxCodes=CBA |
|Prices |Live| TBA | https://www.asx.com.au/asx/markets/priceLookup.do?by=asxCodes&asxCodes=REX |
|Prices |Historical| TBA | https://www.asx.com.au/asx/1/share/ANZ/prices?interval=daily&count=500 |
|Warrants |Live| TBA | https://www.asx.com.au/asx/markets/warrantPrices.do?by=underlyingAsxCode&underlyingCode=CBA&expiryDate= |
|Options |Live| TBA | https://www.asx.com.au/asx/markets/optionPrices.do?by=underlyingCode&underlyingCode=CBA&expiryDate=&optionType=B |
|Announcements|Current| scrape_AnnouncementsCurr | https://www.asx.com.au/asx/statistics/todayAnns.do |
|Announcements |Previous |scrape_AnnouncementsPrev | https://www.asx.com.au/asx/statistics/prevBusDayAnns.do |
|Announcements |Historical |TBA | https://www.asx.com.au/asx/statistics/announcements.do?by=asxCode&asxCode=CBA&timeframe=Y&year=2017 |
|News |Recent |scrape_News | https://www.morningstar.com.au/Stocks/SignalGDigest |
|Broker Reports |Recent |TBA | http://www.sharecafe.com.au/article.asp?a=ALP&p=1 |
|ASX Companies |Current |TBA | https://www.asx.com.au/asx/research/listedCompanies.do |
|Index Constituents |Current |TBA | https://www.marketindex.com.au/asx300 |
|Corporate Calendar |Current |TBA | https://www.morningstar.com.au/Stocks/CorpCalendar |
|Change in Directors Interest |Historical |TBA | https://www.investsmart.com.au/shares/asx-asx/asx-limited/change-in-directors-interest|
|Annual Reports |Historical |TBA | TBA |
|Company Information |Current |TBA | https://www.asx.com.au/asx/share-price-research/company/WBC |
|Short Position Reports |Current |TBA | https://asic.gov.au/regulatory-resources/markets/short-selling/short-position-reports-table/ |
|Market Capitalisation |Historical |TBA | https://www.asxlistedcompanies.com/ |
|Forum |Current |TBA | https://hotcopper.com.au/discussions/asx---by-stock/ |

