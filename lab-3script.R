
## Data 

install.packages("dslabs")
library(dslabs) 
library(tidyverse)

data <-gapminder

dim(data)
summar(data)

gap2011 <- data %>% 
  as_tibble() %>% 
  filter(year == 2011)

dim(gap2011)
summary(gap2011)
class(gap2011)
colnames(gap2011)

par(mar=c(3,3,3,3))

## Life Expectancy 

ggplot(data = gap2011) + 
  geom_point(mapping = aes(x = gdp, y = life_expectancy))

ggplot(data = gap2011) +
  geom_histogram(mapping = aes(x = life_expectancy)) +
  facet_wrap(~ continent, nrow=2)

## Fertility 

ggplot(data=gap2011) +
  geom_point(mapping = aes(x = gdp, y = fertility, color = continent)) +
  facet_wrap(~ continent, nrow = 2)

ggplot(data = gap2011) +
  geom_point(mapping = aes(x = fertility, y = infant_mortality, 
                           color = continent)) +
  geom_smooth(mapping = aes(x = fertility, y = infant_mortality))


## Infant mortality 

ggplot(data = gap2011) +
  geom_point(mapping = aes(x = gdp, y = infant_mortality, 
                           color = continent)) +
  facet_wrap(~ continent, nrow = 2)
  



