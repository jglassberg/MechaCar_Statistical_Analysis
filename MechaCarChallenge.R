library("dplyr")

MechaCar_mpg <- read.csv("MechaCar_mpg.csv", header = TRUE, sep = ",")

multiple_linear_regression <- lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

summary(multiple_linear_regression)

Suspension_Coil <- read.csv("Suspension_Coil.csv", header = TRUE, sep = ",")

total_summary <- Suspension_Coil %>% 
  summarize(sd_PSI = sd(PSI, na.rm = T),
            mean_PSI = mean(PSI, na.rm = T),
            median_PSI = median(PSI, na.rm = T),
            variance_PSI = var(PSI, na.rm = T))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(sd_PSI = sd(PSI, na.rm = T),
            mean_PSI = mean(PSI, na.rm = T),
            median_PSI = median(PSI, na.rm = T),
            variance_PSI = var(PSI, na.rm = T))

t.test(Suspension_Coil$PSI,mu=1500)

lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
