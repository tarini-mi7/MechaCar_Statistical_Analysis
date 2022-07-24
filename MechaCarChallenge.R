library(dplyr)
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_table)
#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table) 

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table)) 