library(shiny)

status<- function(bmi) {
  if(bmi<=18.5) return("underweight") 
  else if(bmi<25) return("healthy weight")
  else if(bmi>=25) return("overweight")
}

shinyServer(
  function(input, output) {
    bmi <- reactive({input$weight/(input$height/100)^2})
    output$bmi <- renderPrint({bmi()})
    output$status <- renderText({status(bmi())})
  }
)
