# MechCar Analysis
## Overview 
Our employer AutosRUs' newest prototype, the MechaCar, is suffering from production troubles. They ask Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team. In this challenge, we are helping Jeremy and the data analytics team do the following:
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Deliverable 1 

* The MechaCar_mpg.csv file is imported and read into a dataframe 
* An RScript is written for a linear regression model to be performed on all six variables 
* An RScript is written to create the statistical summary of the linear regression model with the intended p-values
* There is a summary that addresses all three questions 

### Results 
![Statistical Summary](https://github.com/yamyams97/MechCar_Statistical_Analysis/blob/main/Images/D1Summary.png)

Above we have the statistical summary that shows us:

1. The vehichle length and the vehichle ground clearance provide non-random amounts of variance to the model. They have a significantly lower p-value compared to the vehichle weight, spoiler angle, and All Wheel Drive (AWD).
2. The p-value (5.35e-11) is smaller than the assumed significance level of 0.05%, so that allows us to reject our null hypothesis.
3. This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively. 

## Deliverable 2 

* The Suspension_Coil.csv file is imported and read into a dataframe 
* An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots 
* An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot 
* There is a summary that addresses the design specification requirement for all the manufacturing lots and each lot individually 

Looking at the suspension coil dataset, we see the results of testing the weight capacities of multiple suspension coils from different production lots to determine consistencies. 

Here is a look at some statistics from all the manufacturing lots. 

![hehe](https://github.com/yamyams97/MechCar_Statistical_Analysis/blob/main/Images/D2summary.png)

And here is a look at the statistics of each individual production lot. 
![hehe](https://github.com/yamyams97/MechCar_Statistical_Analysis/blob/main/Images/D2lotsummary.png)

The main thing that jumps out at you is the very high variance of the PSI levels from lot 3. It exceeds the 100 PSI variance requirement, so it would be reccomended to look into what is going on at lot 3 in comparison to lot 1 & 2.

## Deliverable 3 

* An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population 
* An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population 
* There is a summary of the t-test results across all manufacturing lots and for each lot 

The first step was to conduct a t-test on the suspension coil data to determine whether there is a statistical difference between the mean of this provided sample dataset and a hypothesized, potential population dataset. Using the presumed population mean of 1500, we find the following:

![hehe](https://github.com/yamyams97/MechCar_Statistical_Analysis/blob/main/Images/D3t-test.png)

From the data we see that the mean is the same 1498.78 as we saw in our deliverable 2 statistics. The p-value is 0.06, which is higher than the common significance value of 0.05. Therefore there is not enough evidence to support rejecting the null hypothesis. 

Now looking at the t-test of each individual lot:

![hehe](https://github.com/yamyams97/MechCar_Statistical_Analysis/blob/main/Images/D3-3test.png)

1. Lot 1 has a p-value of 1, so we clearly cannot reject the null hypothesis.
2. Lot 2 has a slightly lower p-value and lot 1, but .61 is still too high, so therefore we cannot reject the null hypthesis.
3. Lot 3 has a completely different result to lot 1 & 2. The sample mean is slightly lower, and the p-value is .04, so therefore there is enough evidence to reject the null hypthesis. 

Looking through the suspension coil data, there is clearly something different happening in lot 3, atleast based on the statistics in comparison to lot 1 & 2. 

## Deliverable 4 


