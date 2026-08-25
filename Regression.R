#Author: Pawar, Date: 08/25/2026, Purpose: Test the regression analysis

# Import dummy dataset
training_data <- mtcars

# Plot the data as a scatter plot
scatter.smooth(x= training_data$disp, y= training_data$wt, main="SpeedVSdistance")

