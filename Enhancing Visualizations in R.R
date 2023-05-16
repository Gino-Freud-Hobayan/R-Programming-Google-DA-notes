## Enhancing Visualizations in R

library(ggplot2)
library(palmerpenguins)

## plot that shows the relationship between body mass and flipper length. 
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))





## We can use COLOR to highlight the different penguin species.
## We can add a third variable (color) to our scatter plot by mapping it to a new aesthetic. 
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species))


## We can also use SHAPE to highlight the different penguin species. 
## Let's map the variable species to the aesthetic shape. 
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,shape=species))


## COLOR + SHAPE to highlight the different penguin species
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,shape=species,color=species))


## COLOR + SHAPE + SIZE to highlight the different penguin species
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,shape=species,color=species,size=species))


## Using Alpha/Transparency to highlight the different penguin species
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,alpha=species))


## We just want every point in our scatter plot to be purple. 
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g),color="purple")


