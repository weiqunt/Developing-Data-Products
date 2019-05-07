#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Define UI for application that predict the child's adult height
shinyUI (fluidPage(
      # Application title
   titlePanel("Adult height prediction"),
  
  # Sidebar panel for inputs 
   sidebarLayout(
    sidebarPanel(
       numericInput('mheight',label = 'Mother Height (cm)', 160, min=80, max=220),
       numericInput('fheight',label = 'Father Height (cm)', 170,  min=80, max=220),
       numericInput('gender', label ='Gender',0, min=0, max=1),
       h4('Note: Girl is 0 and Boy is 1'),
       submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction (cm)'),
      verbatimTextOutput("prediction")
    )
    )
  )
)



