library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Body Mass Index (BMI) calculator"),
  sidebarPanel(
    h3('Enter your information below'),
    numericInput("weight", "Weigth (kg)", value = 60, min = 1, max = 1000, step=1),
    numericInput("height", "heigth (cm)", value = 170, min = 30, max = 300, step=1),
    submitButton("Submit")
  ),
  mainPanel(
    h3('Result'),
    h4("BMI"),
    verbatimTextOutput("bmi"),
    h4("Status"),
    verbatimTextOutput("status"),
    h5("BMI is an indicator of general health based solely on 
       weight and height. For more detailed examination, please 
       consult your general practitioner.")
  )
))
