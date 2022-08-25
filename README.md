# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Deliverable 1](https://github.com/mhenson1989/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable1_Output.PNG)

- ***Question #1: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?*** The coefficients that provided a non-random amount of variance are ground_clearance and vehicle_length. 

- ***Question #2: Is the slope of the linear model considered to be zero?*** The p-value of my linear regression analysis is 5.35e-11. This is significantly smaller than the assumed significance level of 0.05%. Therefore, it is sufficiently proven that there is evidence to reject a null hypothesis, and that the slope of my linear model is not zero. 

- ***Question #3: Does this linear model predict mpg of MechaCar prototypes effectively?*** When looking at the R-squared value of 0.7149, it indicates an approximate accuracty of 71%, which almost equates to a 1 and 4 chance of being inaccurate. Though this is not bad odds, I would recommend bolstering this model to increase it's r-squared value. 

## Summary Statistics on Suspension Coils

![Group Summary D2](https://github.com/mhenson1989/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable2_TotalSummaryPSI.PNG)

![Lot Summary D2](https://github.com/mhenson1989/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable2_LotSummary.PNG)

Looking at the total summary and lot summaries above, the overall variance stays within the bounds of the 100 pounds PSI perameters, however, looking at the individual Lot Summaries, particuarly Lot 3, we see that the variance is 170.29, almost double the recommended pounds PSI, and therefore outside the bounds of design specifications. 

## T-Tests on Suspension Coils

The p-value in the Lot Summary t-test, as well as the t-tests for Lots 1 and 2 are well above a common significance value of 0.05% and therefore there is not ample evidence to reject the null hypothesis. I would conclude that the Lot Summary, Lot 1 and Lot 2 are statistically different. However, looking below at the t-test for Lot 3, we see a p-value of 0.04168 amd therefore lower than the common significance value of 0.05%. Therefore in Lot 3, the PSI is statistically similar. 

![Lot 3 Image D3](https://github.com/mhenson1989/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable3_TTest_Lot3.PNG)

## Study Design: MechaCar vs. Competition
Especially in the current economy and with the rising costs due to inflation it would be beneficial for MechCar to consider cost effective metrics for their consumers. In particular, I would recommend an analysis that focuses on cost, fuel efficiency and maintenance cost. 

**Metrics**
Within this statistical study, I would recommend looking specifically at metrics for overall car cost, fuel efficiency and maintanance cost/reliability. You could cross compare these metrics over car age to see how these costs would change over time, and then look at if cost effects consumers overall investment and/or designation as a repeat customer.

**Null Hypothesis**
Null Hypothesis: The cost factors within the statistical analysis, i.e. car cost, fuel efficiency and maintanence cost have no direct correlation to consumer choices of buying a car from MechaCar.

**Statistical Tests**
I would use a linear regression model to test the hypothesis, as well as a t-test to further clarify the analysis. 

**Data Needed**
For this analysis, we will need year over year data on the cost factors outlined, as well as data that indicates repeat consumers. 