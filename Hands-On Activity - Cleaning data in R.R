## Hands-On Activity: Cleaning data in R

library(tidyverse)
library(skimr)
library(janitor)

bookings_df <- read_csv("hotel_bookings.csv")

head(bookings_df)

# Summarize or preview the data
str(bookings_df)

glimpse(bookings_df)


# Check the names of columns
colnames(bookings_df)


# To provide a detailed summary of the data
skim_without_charts(bookings_df)






## Now, let's say you are primarily interested in the following variables: 
##'hotel', 
##'is_canceled'
##'lead_time'. 

trimmed_df <- bookings_df %>% 
  select('hotel','is_canceled','lead_time' )


## Rename the variable 'hotel' to 'hotel_type'
trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)



## Another common task is to either split or combine data in different columns. 
## Combine the arrival month and year into one column using the unite() function:
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")



## Let's say you wanted to create a new column that summed up all the adults, 
## children, and babies on a reservation for the total number of people. 
example_df <- bookings_df %>%
  mutate(guests = adults + children + babies)

head(example_df)






## Now it's time to calculate some summary statistics! 

## Calculate the total number of canceled bookings and the average lead time for booking  

example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

head(example_df)





