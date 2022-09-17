library("dplyr")

MechaCar_mpg <- read.csv("MechaCar_mpg.csv", header = TRUE, sep = ",")

multiple_linear_regression <- lm(vehicle_weight ~ vehicle_length + spoiler_angle + ground_clearance + AWD + mpg, data = MechaCar_mpg)

summary(multiple_linear_regression)

