## Getting started with ggplot()

library(ggplot2)
library(palmerpenguins)



## the plot that shows the relationship between body mass and flipper length 
## in the 3 penguin species.

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
ggplot(data = penguins): 


  
  


## Let's try bill length and bill depth.
  
ggplot(data=penguins) + geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm))
 
  
?geom_point

  
  
  
  
  




