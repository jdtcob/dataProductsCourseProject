library(caret)
library(e1071)
data(iris)
library(shiny)
library(ggplot2)
source('dataProcessing.R')
shinyServer(
  function(input, output) {
    
    
    ### Data visualization
    dv <- eventReactive(input$button7, {
      list(src = "DV.png", width = 480, height = 400)
    })
    output$img1 <- renderImage({dv()}, deleteFile = FALSE)
    

    ### Return user input - data split
    dataSplit <- eventReactive(input$button1, {
      paste("Training samples: ",150*(input$slider1/100), ", Testing samples: ", 
            150*(1-input$slider1/100))
    })
    output$text1 <- renderText({ dataSplit() })
    
    ### Return user input - training method
    tMethod <- eventReactive(input$button2, {
      if (input$method1==1) {
        "Linear discriminant analysis will be used to train the model."
      } else if (input$method1==2) {
        "Tree-based method will be used to train the model."
      } else if (input$method1==3)
        "K Nearest Neighbors method will be used to train the model."
    })
    output$text2 <- renderText({ tMethod() })
    
    
    ### Process data based on user input ###
    results <- eventReactive(input$button3, {
      analyzeData(input$slider1,input$method1)
    })
    
    ### Display confusion matrix with results
    output$text3 <- renderPrint({ print(results()) })
    
    
  }
)