library(tidyverse)

getwd()

bookings_df <- read_csv("hotel_bookings.csv")


#which returns the columns and first several rows of data. 
head(bookings_df)

#Will provide summaries of each column in your data arranged horizontally. 
str(bookings_df)

#To find out what columns you have in your data frame
colnames(bookings_df)

#Create another data frame using `bookings_df` that focuses on the average daily rate
new_df <- select(bookings_df, `adr`, adults)

#To create new variables in your data frame
mutate(new_df, total = `adr` / adults)


