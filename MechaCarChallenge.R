## DELIVERABLE 1
# 3. Import Library
library(dplyr)

# 4. Import and Read File
mechacar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import mechacar data set

# 5. Linear Regression Model - 6 variables
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_table)

# Coefficients:
# (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance               AWD  
# -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00        -3.411e+00

# 6. Summary Model to determine p-value and r-squared value for linear regression model
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             +                ground_clearance + AWD, data = mechacar_table))

# Call:
# lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
#     ground_clearance + AWD, data = mechacar_table)
#Residuals:
#  Min       1Q   Median       3Q      Max 
#-19.4701  -4.4994  -0.0692   5.4433  18.5849 
#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
#  vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
#  vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
#spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
#ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
#  AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
#---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#Residual standard error: 8.774 on 44 degrees of freedom
#Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
#F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
# P-Value: 5.35e-11
# R-squared Value (Multiple): 0.7149, Adjusted R-Squared: 0.6825

## DELIVERABLE 2
# 2. Import and Read File
suspensioncoil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import suspension coil data set

#3. Calculate mean, median, variance and standard deviation for PSI of manf. lots
total_summary_PSI <- summarize(suspensioncoil_table, mean(PSI), median(PSI), var(PSI), sd(PSI) )

#4. Lot Summary Dataframe
lot_summary_group <- group_by(suspensioncoil_table, Manufacturing_Lot)
lot_summary <- summarize(lot_summary_group, mean(PSI), median(PSI), var(PSI), sd(PSI))

## DELIVERABLE 3
# T Test
#2 T-test - All lots
t.test(suspensioncoil_table$PSI, mu = 1500)
#3 T-test - each lot
t.test(subset(suspensioncoil_table, Manufacturing_Lot=='Lot1')$PSI, mu = 1500)
t.test(subset(suspensioncoil_table, Manufacturing_Lot=='Lot2')$PSI, mu = 1500)
t.test(subset(suspensioncoil_table, Manufacturing_Lot=='Lot3')$PSI, mu = 1500)


