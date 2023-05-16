##Hands-On Activity: Changing your data

library(tidyverse)
library(skimr)
library(janitor)

hotel_bookings <- read_csv("hotel_bookings_clean.csv")

head(hotel_bookings)






## Data Inspection & Data Cleaning

str(hotel_bookings)

glimpse(hotel_bookings)

## You can also use `colnames()` to get the names of the columns in your dataset.
colnames(hotel_bookings)








## Manipulating your data

## Let's say you want to arrange the data by most lead time to least lead time 
## because you want to focus on bookings that were made far in advance. 

arrange(hotel_bookings, lead_time )

arrange(hotel_bookings, desc(lead_time))

head(hotel_bookings)



## If you wanted to create a new data frame that had those changes saved
hotel_bookings_v2 <- arrange(hotel_bookings, desc(lead_time))

head(hotel_bookings_v2)




## You can also find out the maximum and minimum lead times without sorting the whole dataset 
## using the `arrange()` function.

max(hotel_bookings$lead_time)

min(hotel_bookings$lead_time)


## Testing for error - We have to use the $ sign to specify.
min(lead_time)



## Now, let's say you just want to know what the average lead time for booking is

## You can use the `mean()` function to answer that question 
## since the average of a set of number is also the mean of the set of numbers:

mean(hotel_bookings$lead_time)




## You should get the same answer even if you use the v2 dataset that included the `arrange()` function. 
## This is because the `arrange()` function doesn't change the values in the dataset; 
## it just re-arranges them.

mean(hotel_bookings_v2$lead_time)



## They want to know what the average lead time before booking is for just city hotels. 

hotel_bookings_city <- filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")

head(hotel_bookings_city)





## Now, your boss wants to know a lot more information about city hotels, 
## including the maximum and minimum lead time. 
## They are also interested in how they are different from resort hotels. 

hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))


head(hotel_summary)




