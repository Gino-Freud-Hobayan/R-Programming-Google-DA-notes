install.packages('Tmisc')

library(tidyverse)

library(Tmisc)
data(quartet)
View(quartet)



## We'll get a summary of each set with the 
## mean, standard deviation, and correlation for each of these datasets. 
quartet %>%
  group_by(set) %>%
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))


## Plot the graph
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(-set)






## datasauRus package

install.packages('datasauRus')
library ('datasauRus')



ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geompoint()+theme_void()+theme(legend.position="none")+facet_wrap(-dataset)




