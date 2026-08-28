#Author: Pawar, Date: 08/25/2026, Purpose: Test the regression analysis

# Import dummy dataset
training_data <- mtcars

# Plot the data as a scatter plot
scatter.smooth(x= training_data$disp, y= training_data$wt, main="SpeedVSdistance")

# 50% split--Underfitting
# 70% split-----------------Assignment
# 90% split--Overfitting-----------------Assignment

# Create a training dataset with 50% split
training_dataset <- training_data[1:16,]
test_dataset <- training_data[17:32,]

# Creating regression model on mpg and wt of car
regression_model <- lm(mpg ~ wt, data=training_dataset)














