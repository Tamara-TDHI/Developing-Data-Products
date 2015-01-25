library(shiny)

CLV <- function(transactiewaarde, status, soort, norepeat) 
  transactiewaarde * norepeat * as.numeric(status) * 1/as.numeric(soort)

shinyServer(
  function(input,output){
    output$transactiewaarde <- renderPrint({input$transactiewaarde})
    output$status <- renderPrint({input$status})
    output$soort <- renderPrint({input$soort})
    output$norepeat <- renderPrint({input$norepeat})
    output$prediction <- renderPrint({CLV(input$transactiewaarde, input$status, input$soort, input$norepeat)})
  }
)