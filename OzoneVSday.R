# Author: Pawar, Date: 09/10/2026, Purpose: Build a regression model

# Load the dataset
data <- airquality

# Remove all the rows with NA's
New_data <- data[complete.cases(data),]

# Plot the data as a scatter plot for variables “Ozone” and “Day” wth main=“OzoneVSday”, Save plot as OzoneVSday.pdf

scatter.smooth(x= New_data$Ozone, y= New_data$Day, main="OzoneVSday")

# Create a regression model for 50% split dataset named “airquality” with variables “Ozone” and “Day”. 

training_dataset <- New_data[1:55,]
test_dataset <- New_data[56:111,]

regression_model <- lm(Ozone ~ Day, data=training_dataset)

prediction_result <- predict(regression_model, test_dataset)

# Results of prediction
actual_prediction_values <- data.frame(cbind(actuals=training_dataset$Ozone, predicteds=prediction_result))

actual_prediction_values
    actuals predicteds
89       41   35.18095
90       36   34.91597
91       12   34.65100
92       18   34.38602
93       23   42.33531
94       19   42.07033
95        8   41.80535
99       16   40.74545
100      11   40.48047
101      14   40.21550
104      18   39.42057
105      14   39.15559
106      34   38.89062
108       6   38.36066
109      30   38.09569
110      11   37.83071
111       1   37.56573
112      11   37.30076
113       4   37.03578
114      32   36.77081
116      23   36.24085
117      45   35.97588
118     115   35.71090
120      37   35.18095
121      29   34.91597
122      71   34.65100
123      39   34.38602
124      23   42.33531
125      21   42.07033
126      37   41.80535
127      20   41.54038
128      12   41.27540
129      13   41.01042
130     135   40.74545
131      49   40.48047
132      32   40.21550
133      64   39.95052
134      40   39.68554
135      77   39.42057
136      97   39.15559
137      97   38.89062
138      85   38.62564
139      10   38.36066
140      27   38.09569
141       7   37.83071
142      48   37.56573
143      35   37.30076
144      61   37.03578
145      79   36.77081
146      63   36.50583
147      16   36.24085
148      80   35.97588
149     108   35.71090
151      20   35.18095
152      52   34.91597
153      41   34.65100

mean(New_data$Ozone)

data$Ozone[is.na(data$Ozone)] <- 42


