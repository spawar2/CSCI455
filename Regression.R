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

# Predict the relationship between mpg and weight of the on test dataset using our generated regression model

prediction_result <- predict(regression_model, test_dataset)

# Results of prediction
actual_prediction_values <- data.frame(cbind(actuals=training_data$mpg, predicteds=prediction_result))

actual_prediction_values
   actuals predicteds
1     21.0   10.17314
2     21.0   24.32264
3     22.8   26.95458
4     21.4   25.96479
5     18.7   23.13039
6     18.1   18.38390
7     14.3   18.76632
8     24.4   16.94420
9     22.8   16.92171
10    19.2   25.51488
11    17.8   24.59258
12    16.4   27.41348
13    17.3   19.95856
14    15.2   21.75818
15    10.4   18.15895
16    10.4   21.71319
17    14.7   10.17314
18    32.4   24.32264
19    30.4   26.95458
20    33.9   25.96479
21    21.5   23.13039
22    15.5   18.38390
23    15.2   18.76632
24    13.3   16.94420
25    19.2   16.92171
26    27.3   25.51488
27    26.0   24.59258
28    30.4   27.41348
29    15.8   19.95856
30    19.7   21.75818
31    15.0   18.15895
32    21.4   21.71319



















