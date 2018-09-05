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


### Market 
## Live Data  

|Data         |Type | R Script  | Source |
|:---|:---|:---|:---|
|ASX Companies |Current |scrape_ASXCurr | https://www.asx.com.au/asx/research/listedCompanies.do |
|Dividends |Current| scrape_DividendsCurr | https://www.morningstar.com.au/Stocks/UpcomingDividends |
|Announcements|Current| scrape_AnnouncementsCurr | https://www.asx.com.au/asx/statistics/todayAnns.do |
|News |Recent |scrape_News | https://www.morningstar.com.au/Stocks/SignalGDigest |
|Broker Reports |Current |TBA | http://www.sharecafe.com.au/broker_news.asp?a=ALT&p=50 |
|Corporate Calendar |Current |TBA | https://www.morningstar.com.au/Stocks/CorpCalendar |
|Forum |Current |TBA | https://hotcopper.com.au/discussions/asx---by-stock/ |
|Reporting Season |Current |TBA | https://www.fnarena.com/index.php/reporting_season/ |

broker reports start at 3611 to 49829?

## Prev Day Data 
|Data         |Type | R Script  | Source |
|:---|:---|:---|:---|
|Announcements |Previous |scrape_AnnouncementsPrev | https://www.asx.com.au/asx/statistics/prevBusDayAnns.do |
|Short Interest |Previous |TBA | https://www.asx.com.au/data/shortsell.txt |

## Historical Data  

|Data         |Type | R Script  | Source |
|:---|:---|:---|:---|
|ASX300 Companies |Historical |TBA | https://www.asx300list.com/ |  
|Consensus |Historical |scrape_ConsensusHist | https://www.marketindex.com.au/analysis/consensus-data |
|Short Interest |Historical |TBA | https://asic.gov.au/regulatory-resources/markets/short-selling/short-position-reports-table/ |


### by ASXCode
## Live Data  

|Data         |Type | R Script  | Source |
|:---|:---|:---|:---|
|Prices |Live| scrape_PriceLive | https://www.asx.com.au/asx/1/share/NEA/ |
|Warrants |Live| TBA | https://www.asx.com.au/asx/1/company/MQG/warrants |
|Options |Live| TBA | https://www.asx.com.au/asx/1/company/MQG/options |
|Dividends |Historical| scrape_DividendsHist3 | https://www.asx.com.au/asx/1/company/MQG/dividends |
|Announcements |Historical |TBA | https://www.asx.com.au/asx/1/company/MQG/announcements |
|Company Information |Current |TBA | https://www.asx.com.au/asx/share-price-research/company/WBC |
|Consensus |Current |TBA | https://www.reuters.com/finance/stocks/analyst/QBE.AX |

### Historical Data

|Data         |Type | R Script  | Source |
|:---|:---|:---|:---|
|Prices |Historical| TBA | https://www.asx.com.au/asx/1/share/ANZ/prices?interval=daily&count=500 |
|Dividends |Historical| scrape_DividendsHist | http://www.sharedividends.com.au/NAB |
|Dividends |Historical| scrape_DividendsHist2 | http://dividends.com.au/dividend-history/?enter_code=NAB |
|Announcements |Historical |TBA | https://www.asx.com.au/asx/statistics/announcements.do?by=asxCode&asxCode=CBA&timeframe=Y&year=2017 |
|Broker Reports |Recent |TBA | http://www.sharecafe.com.au/article.asp?a=ALP&p=1 |
|Change in Directors Interest |Historical |TBA | https://www.investsmart.com.au/shares/asx-asx/asx-limited/change-in-directors-interest|
|Annual Reports |Historical |TBA | TBA |
|Financials |Historical |TBA | https://www.marketscreener.com/BHP-BILLITON-LIMITED-6492795/financials/  |
|Earnings |Historical |TBA | https://au.investing.com/equities/australian-stock-exchange-ltd-earnings  |


https://www.fnarena.com/index.php/2018/08/20/weekly-ratings-targets-forecast-changes-84/  
https://www.marketmatters.com.au/reports/  
https://www.marketindex.com.au/ - look at popular pages
http://www.thebull.com.au/premium/a/76561-18-share-tips---27-august-2018.html  
https://www.livewiremarkets.com/feeds/trending  
http://www.sharecafe.com.au/search.asp?a=SR&SearchFor=EVN&searchType=0  
http://www.sharecafe.com.au/article.asp?a=ALP&p=1  


ASX FAQs - https://www.marketindex.com.au/faqs  
S&P ASX Index Rebalancing Notices - https://www.marketindex.com.au/rebalance-announcements  
