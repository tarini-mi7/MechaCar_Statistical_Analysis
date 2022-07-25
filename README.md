# MechaCar_Statistical_Analysis
# MechaCar Statistical Analysis
Statisitical analysis of automobile performance with R

## Overview
AutosRUs' new MechaCar is "suffering from production troubles" and the company is hoping that an analytical review may help provide some insight. The goal of this project is to:
* discover which variables predict the MPG for vehicle prototypes;
* collect summary stats on the PSI of suspension coils;
* determine if manufacturing lots are statistically different from the mean population;
* design a study to compare the MechaCar performance against vehicles from other manufacturers.

## Results

### Multiple Linear Regression to Predict Miles per Gallon
![Multiple Linear Regression on MPG](Mechacar_Screenshot.png)

* Coefficients providing non-random amount of variance to the mpg values: The variables **Vehicle Length** and the **Ground Clearance** provide a non-random amount of variance on the MPG values in the dataset. Their p-values are:

  * **Vehicle Length**: 2.6x10<sup>-12</sup>
  * **Ground Clearance**: 5.21x10<sup>-8</sup>

  The intercept was also statistically significant, indicating that there are likely other factors, not included in our dataset, that have a strong impact on the MPG values.
* Slope of the linear model: The slope of the linear model can not be considered to be zero as the p-value, 5.35x10<sup>-11</sup>, is lower than an extreme level of significance. Thus the null hypothesis must be rejected. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.
* Effectiveness of the linear model: Although there are still unconsidered factors, this model does predict the mpg values of MechaCar prototype with some relative effectiveness. The r-squared value of 0.7149 indicates that the model is 71% accurate.
