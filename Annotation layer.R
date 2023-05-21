## Annotation layer

library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))






## We can add a title to our plot that shows the relationship between 
## body mass and flipper length for the three penguin species. 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length")




## We can also add a subtitle to our plot to highlight important information about our data. 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle="Sample of Three Penguin Species")






## We can add a caption to our plot in the same way. Captions let us show the source of our data. 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", 
       subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")




## Titles, subtitles, and captions are labels that we put outside of the grid of our plot to indicate important information. 
## If we want to put text inside the grid to call out specific data points, we can use the annotate function. 





## Annotate Function


## Let's say we want to highlight the data from the Gentoo penguins. 

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", 
       subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220,y=3500,label="The Gentoos are the Largest")





## Let's say we want to change the color of our text. 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", 
       subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220,y=3500,label="The Gentoos are the Largest", color="purple")




## We can also change the font style and size of our text. 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", 
       subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220,y=3500,label="The Gentoos are the Largest", color="purple"
          ,fontface="bold",size=4.5)





## We can even change the angle of our text. 
## We can tilt our text at a 25 degree angle to line it up with our data points. 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", 
       subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220,y=3500,label="The Gentoos are the Largest", color="purple"
           ,fontface="bold",size=4.5, angle=25)




## Creating a variable

p <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", 
       subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gorman")



## Using the variable

p


p + annotate("text", x=220,y=3500,label="The Gentoos are the Largest", color="purple"
             ,fontface="bold",size=4.5, angle=25)











