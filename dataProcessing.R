library(caret)
data(iris)

analyzeData <- function(numTrain,selector){
  set.seed(678)
  inTrain <- createDataPartition(iris$Species, p=numTrain/100, list=FALSE)
  data_train <- iris[inTrain,]
  data_test <- iris[-inTrain,]

  if (selector==1){
    model <- train(Species~., method ="lda",data=data_train)
  } else if (selector==2){
    model <- train(Species~., method="rpart",data=data_train)
  } else if (selector==3){
    model <- train(Species~., method="knn",data=data_train)
  }
  
  predictions <- predict(model, data_test[,1:4])
  results <- confusionMatrix(predictions, data_test$Species)
  
  return(results)
}
