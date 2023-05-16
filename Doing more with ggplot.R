## Doing more with ggplot

library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))


## plot that shows the relationship between body mass and flipper length 
## geom_smooth
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))




## Let's say we want to show the relationship between the trend line and the data points more clearly. 
## geom_point + geom_smooth
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))



## Let's say we want to plot a separate line for each species of penguin. 
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g,linetype=species))


## geom_jitter
ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))





## Bar chart
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut))


## Let's add the color aesthetic to our plot and map it to the variable cut. 
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,color=cut))



## MUCH BETTER

## Let's say, we want to highlight the difference between cuts 
## even more clearly to make our plot easier to understand. 
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=cut))



## If we map fill to a new variable, geom _ bar will display a stacked bar chart. 
## Let's map fill to clarity instead of cut.

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=clarity))









