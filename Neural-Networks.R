# Author: Pawar, Date: 10/8/2026, Purpose: Set up a neural network

# Load the package caret
library(caret)

# Upload a dummy dataset for training
dataset <- iris

# Split the dataset into training and testing groups
validation_index <- createDataPartition(dataset$Species, p=0.80, list=FALSE)

validation <- dataset[-validation_index,]
dataset <- dataset[validation_index,]

# Setting a variable for Accuracy measure
control <- trainControl(method="cv", number=10)
metric <- "Accuracy"

# Train the model using LDA/Linear Determinant Analysis
set.seed(7)
fit.lda <- train(Species~., data=dataset, method="lda", metric=metric, trControl= control)

# predictions on the validation dataset
predictions <- predict(fit.lda, validation)
confusionMatrix(predictions, validation$Species)

Confusion Matrix and Statistics

            Reference
Prediction   setosa versicolor virginica
  setosa         10          0         0
  versicolor      0          9         0
  virginica       0          1        10

Overall Statistics
                                          
               Accuracy : 0.9667          
                 95% CI : (0.8278, 0.9992)
    No Information Rate : 0.3333          
    P-Value [Acc > NIR] : 2.963e-13       
                                          
                  Kappa : 0.95            
                                          
 Mcnemar's Test P-Value : NA              

Statistics by Class:

                     Class: setosa
Sensitivity                 1.0000
Specificity                 1.0000
Pos Pred Value              1.0000
Neg Pred Value              1.0000
Prevalence                  0.3333
Detection Rate              0.3333
Detection Prevalence        0.3333
Balanced Accuracy           1.0000
                     Class: versicolor
Sensitivity                     0.9000
Specificity                     1.0000
Pos Pred Value                  1.0000
Neg Pred Value                  0.9524
Prevalence                      0.3333
Detection Rate                  0.3000
Detection Prevalence            0.3000
Balanced Accuracy               0.9500
                     Class: virginica
Sensitivity                    1.0000
Specificity                    0.9500
Pos Pred Value                 0.9091
Neg Pred Value                 1.0000
Prevalence                     0.3333
Detection Rate                 0.3333
Detection Prevalence           0.3667
Balanced Accuracy              0.9750




