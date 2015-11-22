## Description of this file

The purpose of this file is to explain the repository. This repository contains all files required for the Developing Data Products course project. Contained in this repository:
- ui.R: The file that controls how the user interface of the project.
- server.R: The file that performs all operations of the project.
- dataProcessing.R: An additional file where processing is performed.
- README.md: this file, describing the course project and associated files.

## The Assignment

- Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
- Deploy the application on Rstudio's shiny server
- Share the application link by pasting it into the text box below
- Share your server.R and ui.R code on github

The application must include the following:

- Some form of input (widget: textbox, radio button, checkbox, ...)
- Some operation on the ui input in sever.R
- Some reactive output displayed as a result of server calculations
- You must also include enough documentation so that a novice user could use your application.
- The documentation should be at the Shiny website itself. Do not post to an external link.

The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame. 

## Application Summary

This application tests two of the free parameters of ALL machine learning algorithms: ratio of training/testing samples and the method used to train the model.

If too few samples are used for training the test data will not be classified correctly. If too many samples are used for training the the model is subject to overfitting which results in a decrease in overall accuracy. In the Practical Machine Learning course Jeff Leek recommends a 60% training data and 40% testing data split.

The training method deployed for classification is also extremely important. Typically the type of data you encounter determines the method you will use for classification. Linear discriminant analysis, K nearest neighbors, and a tree-based model are the options for training.