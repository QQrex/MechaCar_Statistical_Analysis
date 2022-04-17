# MechaCar_Statistical_Analysis

## Purpose

AutosRUs' newest protoype the MechCar is suffering from production troubles that are blocking the manufacturing team's progress. We are given some data for the MechaCar protoypes to see if we can help out the manufacturing team.

## Overview

We are given two csv files, MechaCar_mpg.csv and Suspension_Coil.csv and we will perform:

- Multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar Protoypes.

- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

- Run t-tests to determine if the manufacturing lots are statistically different from the mean population

- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Line Regression to Predict MPG

![linreg]()

Upon performing our multiple linear regression with the MechaCar MPG data, we can say the vehicle_length and ground_clearance provided a non-random amount of variance to mpg due to their Pr(>|t|) < 0.05. Also, our p-value is less than 0.05, thus rejecting the H0 (m=0) of our linear model. And finally, our R-squared value is 0.71, this means roughly 71% of our dependent values are explained through our linear regression model.

## Summary Statistics on Suspension Coil

![total]()

![lot]()

When looking at both our total and lot summary dataframes of our suspension data, we can see the mean and medians are all around 1500 PSI. However, this does not mean our design specificiations are all the same. When we compare variance and standard deviation, we can see there is a large descrepency between Lot1 and Lot2 versus Lot3. By ploting the suspension data with a boxplot, we can see there are outliers skewing the data in Lot3.

![boxplot]()

## T-Tests on Suspension Coils


![ttest]()

If we are to assume the population mean of our PSI is 1500 lbs per square inch, our t-test of each lot show that Lot1 has a p-value of 1, Lot2, has a p-value of 0.61 and Lot3 has a p-value of 0.042. If our H0 is there is no statistical difference between sample mean and population mean and Ha is there is a statistical difference in sample and population mean. Lot1 and Lot2 can not reject H0 however, Lot3 will reject.