# Deliverable 1
library(dplyr)
library(tidyverse)
mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)) 

# Deliverable 2 
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI))
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                             Median=median(PSI),
                                                                             Variance=var(PSI),
                                                                             SD=sd(PSI))
# Deliverable 3 
t.test(suspension_coil$PSI,mu=1500)
set1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
set2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
set3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(set1$PSI,mu=1500)
t.test(set2$PSI,mu=1500)
t.test(set3$PSI,mu=1500)