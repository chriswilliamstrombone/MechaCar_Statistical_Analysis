# Deliverable 1

# Load libraries
library(tidyverse)
library(dplyr)

# Import csv

mecha_mpg <- read.csv(file = 'Data/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# linear regression

lm(mpg ~ vehicle_weight + 
     spoiler_angle + ground_clearance + AWD + vehicle_length,data = mecha_mpg)

# summary

summary(lm(mpg ~ vehicle_weight + 
             spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_mpg))

# Deliverable 2

#Import csv

suspen_coil <- read.csv(file = 'Data/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#Create total summary

total_summary <-  suspen_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')


#Create lot summary

lot_summary <- suspen_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# Deliverable 3

t.test(suspen_coil$PSI,mu=1500)

lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)