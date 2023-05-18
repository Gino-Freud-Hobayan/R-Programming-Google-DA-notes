## Hands-On Activity: Aesthetics and visualizations

library(ggplot2)

hotel_bookings_aesthetic <- read.csv("hotel_bookings_aesthetic.csv")


## Basic data inspection
head(hotel_bookings_aesthetic)
colnames(hotel_bookings_aesthetic)





## Your stakeholder is interested in developing promotions based on different booking distributions, 
## but first they need to know how many of the transactions are occurring for each different distribution type.
ggplot(data = hotel_bookings_aesthetic) +
  geom_bar(mapping = aes(x = distribution_channel))





## After exploring your bar chart, your stakeholder has more questions. 

## Now they want to know if the number of bookings for each distribution type is different 
## depending on whether or not there was a deposit or what market segment they represent. 

ggplot(data = hotel_bookings_aesthetic) +
  geom_bar(mapping = aes(x = distribution_channel,fill=deposit_type ))






## Now try adding 'fill=market_segment' to this code chunk instead of 'fill=deposit_type':
## This bar chart is similar to the previous chart, 
## except that 'market_segment' data is being recorded in the color-coded sections of each bar. 

ggplot(data = hotel_bookings_aesthetic) +
  geom_bar(mapping = aes(x = distribution_channel,fill=market_segment))






## Step 6: Facets galore

## After reviewing the new charts, 
## Your stakeholder asks you to create separate charts for each deposit type and market segment 
## To help them understand the differences more clearly.

ggplot(data = hotel_bookings_aesthetic) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)




## You notice that it's hard to read the x-axis labels here, 
## so you add one piece of code at the end that rotates the text to 45 degrees
## to make it easier to read. 

ggplot(data = hotel_bookings_aesthetic) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))





## You can use the same syntax to create a different chart for each market segment:
ggplot(data = hotel_bookings_aesthetic) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))




## The `facet_grid` function does something similar. 
## The main difference is that `facet_grid` will include plots even if they are empty. 
ggplot(data = hotel_bookings_aesthetic) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))



## Now, you could put all of this in one chart 
## and explore the differences by deposit type and market segment.
ggplot(data = hotel_bookings_aesthetic) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))




