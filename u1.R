titanic_data = read.csv("data/titanic.csv")

library(ggplot2)
library(dplyr)


ggplot(titanic_data, aes(Age, Survived)) + 
  geom_line() + 
  labs(y="Count", title="Survival grouped by Age on the Titanic")

