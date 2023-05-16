## Transforming data

library(tidyverse)


id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")


#Create a dataframe
employee <- data.frame(id, name, job_title)




# Transform the data:

View(employee)

print(employee)


#separate()
separate(employee, name,into=c('first_name','last_name'), sep=' ')


#unite()



#mutate()
View(penguins)




