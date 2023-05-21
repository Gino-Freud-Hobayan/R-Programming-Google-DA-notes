## Hands-On Activity: Annotating and saving visualizations

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

library(ggplot2)
library(tidyverse)





## Your stakeholder tells you that they would like you to share the visualization breaking down payment type by city
## because it will help inform how the company targets promotions in the future. 
## They ask you to create a cleaned and labeled version and save it as a .png file for them to include in a presentation. 

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)



## Add Title
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="City Hotel & Resort Hotel data")



## Add time period
## To do this, you need to find out when the data is from. 

## min = earliest year
min(hotel_bookings$arrival_date_year)

## max = latest year
max(hotel_bookings$arrival_date_year)





## Save them as a Variable

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)



## R city bar chart with time frame

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))



## R city bar chart with timeframe as caption

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))




## You want to clean up the x and y axis labels to make sure they are really clear. 

## R city bar chart with x and y axis

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")




## R - save your plot
ggsave('hotel_booking_chart.png')


## You could specify the height and width of your .png in the `ggsave()` command. 
ggsave('hotel_booking_chart.png',
       width=16,
       height=8)








