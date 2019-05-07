#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output) {
  
   output$prediction <- renderPrint({if(input$gender==0){(input$mheight+input$fheight)/2-6.35}
    else{(input$mheight+input$fheight)/2+6.35} })
   
})
