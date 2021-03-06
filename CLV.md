Creating useful business insights: customer lifetime value
========================================================
author: Tamara de Heij
date: Sun Jan 25 21:30:57 2015

Why Customer Value?
========================================================

There are several comptetive business strategies a business can adopt:

- operational excellence (e.g. Ikea, McDonalds)
- product leadership (e.g. Apple, BMW)
- customer intimicy (e.g. Amazon.com, Zappos)

Most companies follow the strategy of customer intimacy. In this strategie, the focus lies on the needs of the individual customer. The business goal here is to truly satisfy the desire and needs of the customer, in order to attract, develop and retain the customer as much as possible. Hence: increasing **customer lifetime value**.






The CLV app
========================================================

To integrate the customer lifetime value in your business, we have created a CLV app.

The CLV app takes several input variables and calculates the expected customer lifetime value. The current app is a proof of concept. The correct formula is dependent on several decisions and is custom made per company.

https://tamara-tdhi.shinyapps.io/simpleCLV/ 

The formula
========================================================


```r
CLV <- function(transactiewaarde, status, soort, norepeat) 
  transactiewaarde * norepeat * as.numeric(status) * 1/as.numeric(soort)
```

The CLV is calculated as a result of several input variables:
- transaction value (transactiewaarde) - *average of the transaction value*
- status (status) - *existing customer or prospect*
- number of transactions (norepeat) - *number of transactions*
- type of customer (soort) - *company or individual*

Final thoughts
========================================================
This presentation was made as part of the Coursera's lecture on developing data products.

Questions? Most Welcome!
