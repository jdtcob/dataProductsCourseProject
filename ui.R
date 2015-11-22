library(shiny)


shinyUI(pageWithSidebar(
  headerPanel("Developing Data Products Course Project"),
  sidebarPanel(
    h3('User Input', align='center'),
    br(),
    strong("To visualize the data:"),
    br(),
    actionButton("button7", "Click Here!"),
    br(),
    br(),
    br(),
    
    sliderInput("slider1", label = "Percentage of training data",
                min = 5, max = 95, value = 60),
    actionButton("button1", "Split Data"),
    p("Click the button to divide training and testing sets."),
    br(),
    br(),
    
    selectInput("method1", "Training Method", 
                choices = list("Linear Discriminant Analysis" = 1, 
                               "Tree-Based" = 2,
                               "K Nearest Neighbors" = 3), selected = 1),
    actionButton("button2", "Go"),
    p("Click the button to select a training method."),
    br(),
    br(),
    
    strong("Analyze the data with your chosen parameters."),
    br(),
    actionButton("button3", "Analyze Data")
    
    
    
  ),
  mainPanel(
    tabsetPanel(
      
      tabPanel("Data Visualization/Results",
    
        h4('Data Visualization:'),
        imageOutput("img1"),
        
        h4('Approximate data split:'),
        verbatimTextOutput("text1"),
        
        h4('Training method:'),
        verbatimTextOutput("text2"),
        
        h4('Confusion Matrix:'),
        verbatimTextOutput("text3")
      ),
        
      tabPanel("Documentation",
        h4("Application Summary"),
        p("This application tests two of the free parameters of ALL machine learning algorithms: 
          ratio of training/testing samples and the method used to train the model."),
        p("If too few samples are used for training the test data will not be classified correctly.
          If too many samples are used for training the the model is subject to overfitting which
          results in a decrease in overall accuracy. In the Practical Machine Learning course Jeff Leek
          recommends a 60% training data and 40% testing data split."),
        p("The training method deployed for classification is also extremely important. Typically the type of data you 
          encounter determines the method you will use for classification. Linear discriminant analysis, 
          K nearest neighbors, and a tree-based model are the options for training."),br(),
        
        h4("Button Functionality"),
        strong("Data Visualization"),
        p("The buttons on the left all help the user interpret the effect of our free parameters. The first button gives
          gives the user the option to visualize the data. Clicking this button will display a figure
          that shows Petal Length on the x-axis and Sepal Width on the y-axis. The legend within the plot shows the data
          broken down into its three classes. This plot is used to illustrate the fact that this is a relatively simple
          classification problem. It should be noted that FOUR variables are used when training the model and predicting
          outcomes."),
        strong("Data Split"),
        p("The next option the user has is to determine the percentage of data used for training. Once the appropriate
          percentage is selected click the split data button. Under the heading 'Approximate data split' you will see
          an estimate of the amount of data used for training and testing the model."),
        strong("Training Method"),
        p("Next you must select the training method from the list provided. Once the 'Go' button is clicked the
          application will return the training method you have selected."),
        strong("Generate Analysis"),
        p("When you have finished tuning the parameters you can click 'Analyze' and the application will output an
          associated Confusion Matrix from the predicted values using the model you have developed. If you change
          any of your inputs you must click 'Analyze' again for the Confusion Matrix to update."),br(),
        
        h4("Brief description of training methods"),
        strong("Linear Discriminant Analysis"),
        p("From Wikipedia: 'Linear discriminant analysis (LDA) is a generalization of Fisher's linear discriminant, a method used 
          in statistics, pattern recognition and machine learning to find a linear combination of features that 
          characterizes or separates two or more classes of objects or events. The resulting combination may be used as a linear classifier.'"),
        strong("Tree Based Models"),
        p("From Wikipedia: 'Tree models where the target variable can take a finite set of values are called 
          classification trees. In these tree structures, leaves represent class labels and branches represent conjunctions of features that lead to those class labels.'"),
        strong("K Nearest Neighbors"),
        p("From Wikipedia: 'kNN is a type of instance-based learning where the function is only approximated 
          locally and all computation is deferred until classification. This algorithm is among the simplest 
          of all machine learning algorithms. A shortcoming of the kNN algorithm is that it is sensitive to the local structure of the data.'"),br(),
        
        h4("Interpretation of the Confusion Matrix"),
        strong("Prediction v. Reference Table"),
        p("A table comparing predicted values versus correct labels"),
        strong("Overall Statistics"),
        p("The overall classification accuracy along with associated statistics."),
        strong("Statistics by Class"),
        p("The sensitivity, specificity, positive predictive value, negative predictive value, prevalence, dection rate, 
          detection prevalence and balanced accuracy for each class.")
        
        
        
        
      )
        
    )

  )
))