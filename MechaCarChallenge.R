library(tidyverse)
library(dplyr)

# load mechacar_mpg.csv
Mecha <- read.csv(file='MechaCar_mpg.csv')

# linear regression
lm(
  mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,
  Mecha)

summary(
  lm(
    mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,
      Mecha
  )
)

# load suspension_coil.csv
sus <- read.csv(file='Suspension_Coil.csv')

# create total summary table
total_summary <- summarize(
                        sus, 
                        "mean"=mean(PSI), 
                        "median"=median(PSI),
                        "variance"=var(PSI),
                        "SD"=sd(PSI))

# create lost summary
lot_summary <- sus %>%
                  group_by(Manufacturing_Lot) %>%
                  summarize(
                  "mean"=mean(PSI), 
                  "median"=median(PSI),
                  "variance"=var(PSI),
                  "SD"=sd(PSI))

# boxplot of sus data

plt <- ggplot(sus,
              aes( x= Manufacturing_Lot,
                   y= PSI)
)

plt + geom_boxplot()


# perform t.test
lot1 <- subset(sus, Manufacturing_Lot == "Lot1")

t.test(lot1$PSI, mu=1500)


lot2 <- subset(sus, Manufacturing_Lot == "Lot2")

t.test(lot2$PSI, mu=1500)

lot3 <- subset(sus, Manufacturing_Lot == "Lot3")

t.test(lot3$PSI, mu=1500)


