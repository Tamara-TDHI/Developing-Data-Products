library(shiny)
#setwd("C:/Coursera/Developing Data Products")
shinyUI(pageWithSidebar(
  # Application title
  headerPanel("Customer Lifetime Value"),
  sidebarPanel(
    h3('Sidebar text'),
    p('This extremely simple model calculates the customer lifetime value of an
      existing customer or a prospect. Please fill in the values as requested.
      These predictions are meant as a proof of concept, in a business deployment we should
      focus on the formulas.'),
    numericInput('transactiewaarde','Average Transaction Value',
                 0, min = 0, step=10),
    numericInput('norepeat','Number of transactions per year', 1, min = 0, step=1),
    radioButtons('status', 'Status Customer',
                       c('Prospect' = 1,
                        'Existing Customer' = 2),
                 selected=NULL),
    radioButtons('soort', 'Type',
                       c('Company' = '1',
                        'Person' = '2'),
                 selected=NULL),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Results of prediction'),
    h4('Transaction value - you entered:'),
    verbatimTextOutput('transactiewaarde'),
    h4('Number Transactions - you entered:'),
    verbatimTextOutput('norepeat'),
    h4('Status - you entered:'),
    verbatimTextOutput('status'),
    h4('Type - you entered:'),
    verbatimTextOutput('soort'),
    
    h3('Which resulted in a Customer Lifetime Value Prediction of'),
    verbatimTextOutput('prediction')
  )
))