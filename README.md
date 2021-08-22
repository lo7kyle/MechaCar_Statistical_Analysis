# MechaCar_Statistical_Analysis
Statistical analysis on MechaCar using R

## Purpose:
In this challenge, you’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Resources
* Data Sources: 
MechaCar_mpg.csv, Suspension_Coil.csv

* Software: 
RStudio v1.4.1717

## Results and Analysis:

### Linear Regression to Predict MPG
#### Technical Analysis:
We are given a dataset that contains mpg test results for 50 prototype MechaCars. Each prototype has different designs such as vehicle length, weight, spoiler angle, drivetrain, and ground clearance. 
Using linear regression and R I created a linear model that compares each specification to MPG (miles per gallon). 
For this analysis, the null hypothesis was: 
(x) specification does not affect the miles per gallon of the car. I assumed a significance level of 0.05 because unlike safety features, the direction of this vehicle doesn't need such a strenuous criteron. The analysis can be seen in the image below. 

![Console Regression Summary](https://github.com/lo7kyle/MechaCar_Statistical_Analysis/blob/main/Resources/Linear_Regression_summary.PNG) 

From the summary table we see that our P value of 5.3e-11 is less than our significant level. This tells us that we can reject our null hypothesis and confidently say that changing the vehicle specificiations will have an affect on the MPG of the car. We also see that the Adjusted R-squared value is 0.6825 which tells us that more than half of our dependent variable in this case MPG can be desicrbed by the independent variables. 
 
#### Written Summary:
**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
The variables defined by Pr(>|t|) describes the probability that each coefficient contribues a random amount of variance to the model. The lower the number, the more statistically unlikeliness that coefficient will provide a random amount of variance to the linear model. Referring back to the Regression summary we see that ground clearance, vehicle length, and vehicle weight are all unlikely to provide random variance to the linear model. 

**Is the slope of the linear model considered to be zero? Why or why not?**
The slope of the linear model is not zero because the r value is about 0.8 after taking the sqrt of the r^2 value from the summary. This shows that there is a strong correlation between the dependent and independent variables. 

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
I think that this linear model does not predict the mpg of the MechaCar prototypes effectively. When plotting the single linear regression model of weight and length vs mpg I found that both have a positive slop. This would mean that as the weight increases (assuming if the car is longer, there is more weight added via the frame) so does the mpg. This shouldn't be the case physically unless each car had a different engine i.e. A car weighs 1300kg but has a twin turbo V6 and another car weights 1500kg but is a hybrid car or has less cylinders (V4). This would mean that other parameters have a better correlation and significance to mpg than weight. 
![Weight vs MPG](https://github.com/lo7kyle/MechaCar_Statistical_Analysis/blob/main/Resources/mpg%20vs%20weight.png) 
![Length vs MPG](https://github.com/lo7kyle/MechaCar_Statistical_Analysis/blob/main/Resources/mpg%20vs%20length.png) 

### Summary Statistics on Suspension Coils
#### Technical Analysis:
We are given a dataset for suspension coil with the columns VehicleID, Manufacturing_Lot, and PSI. The purpose of this is quality control of the suspensions. The design specifications for the coils dictate that the variance of the coils must not exceed 100 pounds per square inch. See below for the total summary and the lot summary of the Mean, Median, Variance, and Standard Deviation of the PSI of the suspension.

![Total Summary](https://github.com/lo7kyle/MechaCar_Statistical_Analysis/blob/main/Resources/mpg%20vs%20weight.png) 
![Lot Summary](https://github.com/lo7kyle/MechaCar_Statistical_Analysis/blob/main/Resources/mpg%20vs%20length.png) 

When comparing the total with the 3 lots summary table we see that the mean and the median is similar. This shows that the lots share similar count of data and share similar spread of values. We then look at the variance or standard deviation and see that those numbers are a lot more different. We see that the standard deviation for lot 3 is the greatest. We can assume that this lot has outliers since the variance is so great. 

#### Written Summary:
When looking at the total summary, the suspension coils meet the manufactoring specs; however when we look at the lot summary we start seeing a noticeable difference between each lot and in the case of lot 3, failing specs. As talked about in the analysis, if the mean and median are similar, we can assume that the spread of values are not that far apart. With high variance we can assume that the data set has outliers or is skewed left or right. We can also assume that the data is not a normal distribution. I have plotted the box plots of the different lots and we can see that lot 3 has more outliers than that of lot 1 and 2. 


![Box Plots of Lots](https://github.com/lo7kyle/MechaCar_Statistical_Analysis/blob/main/Resources/mpg%20vs%20length.png) 


### T-Test on Suspension Coils
#### Technical Analysis:
#### Written Summary:

### Study Design: MechaCar vs Competition
#### Technical Analysis:
#### Written Summary:


![Image Link](https://github.com/lo7kyle/bikesharing/blob/main/resources/gender%20dash.PNG) 
