## Aesthetics and facets

library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))






## facet_wrap

## Let's say we wanted to focus on the data for each species of penguin. 
## Facet_wrap()
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  facet_wrap(~species)



## Facet_wrap()
## Let's try faceting the diamonds dataset. 
## We can use facet_wrap on the cut variable to create a separate plot for each category of cut. 
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = color,fill=cut)) +
  facet_wrap(~cut)







## Facet_grid()

## Use facet_grid with the two variables, sex and species. 

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  facet_grid(sex~species)



## Use facet_grid with one variables: species. 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  facet_grid(~species)



## Use facet_grid with one variables: sex. 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  facet_grid(~sex)

