## Hands-On Activity Filters and plots

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

library(ggplot2)



## Earlier, you created a scatter plot to explore the relationship between 
## booking lead time and guests traveling with children.
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))




## Now, your stakeholder wants to run a family-friendly promotion targeting key market segments. 
## She wants to know which market segments generate the largest number of bookings, 
## and where these bookings are made (city hotels or resort hotels).

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill=market_segment))





## After creating this bar chart, you realize that it's difficult to compare the size of the market segments at the top of the bars. 
## You want your stakeholder to be able to clearly compare each segment.   
## You decide to use the facet_wrap() function to create a separate plot for each market segment. 

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)





## FILTERING (using dplyr from tidyverse)

library(tidyverse)



## After considering all the data, your stakeholder decides to send the promotion to families that make online bookings for city hotels. 
## The online segment is the fastest growing segment, and families tend to spend more at city hotels than other types of guests. 

## Your stakeholder asks if you can create a plot that shows the relationship 
## between lead time and guests traveling with children for online bookings at city hotels. 

## This will give her a better idea of the specific timing for the promotion. 

## 1) filtering your data 
## 2) plotting your filtered data. 





## 1.) r filtering a dataset to just city hotels that are online TA

onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))

## View the dataframe
View(onlineta_city_hotels) 





## OPTION 2: Use Pipe operators %>%

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")



## View the dataframe
View(onlineta_city_hotels_v2)







## 2.) Creating a Plot / using your new dataframe

ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))











