## Hands-On Activity Using ggplot

hotel_bookings_using_ggplot <- read.csv("hotel_bookings_using_ggplot.csv")


# Examine your data
head(hotel_bookings_using_ggplot)

colnames(hotel_bookings_using_ggplot)


library(ggplot2)



## Begin creating a Plot

## "I want to target people who book early, 
## and I have a hypothesis that people with children have to book in advance."

ggplot(data = hotel_bookings_using_ggplot) +
  geom_point(mapping = aes(x = lead_time, y = children))






## Your stakeholder says that she wants to increase weekend bookings,

## Your stakeholder wants to know what group of guests book the most weekend nights 
## in order to target that group in a new marketing campaign. 

## She suggests that guests without children book the most weekend nights. Is this true? 


ggplot(data = hotel_bookings_using_ggplot) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))






