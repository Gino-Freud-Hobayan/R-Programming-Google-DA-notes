##Hands-On Activity: Visualizing data with ggplot2

install.packages(ggplot2)
install.packages(palmerpenguins)

library(ggplot2)
library(palmerpenguins)


## Examine the data frame for the penguins data
data(penguins)
View(penguins)

head(penguins)



## Create a plot in ggplot2
## You want to plot the relationship between body mass & flipper length in the three penguin species. 

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
ggplot(data = penguins): 
  


## Create your own plot
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  geom_point()  



