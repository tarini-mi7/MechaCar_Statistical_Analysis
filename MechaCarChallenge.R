library(dplyr)
mechaCar_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
head(mechaCar_table)
# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_table) 

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_table)) 

# Suspension Coil Analysis
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)
head(suspension_coil)

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') 
lot_summary


# T-tests on suspension coils
t.test(suspension_coil$PSI, mu=1500)

t.test(subset(suspension_coil, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)



