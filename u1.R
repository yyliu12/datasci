titanic_data = read.csv("data/titanic.csv")

library(ggplot2)
library(dplyr)


ggplot(titanic_data %>% filter(Survived == 1 & !is.na(Age)), 
       aes(x = Age, color = Age)) + 
  geom_histogram(position="identity", fill="white") + 
  labs(y="Count", title="Survival grouped by Age on the Titanic")





survival_by_class <- titanic_data %>% filter(Age>20) %>% mutate(Survival = ifelse(Survived==1,"survived", "did not survive")) %>% group_by(Pclass, Survival) %>% summarise(count = n())
ggplot(survival_by_class, aes(fill=as.factor(Pclass), y=count, x=Survival)) + 
  geom_bar(position="stack",stat="identity") + 
  labs(title="Survival by class on the Titanic in people older than 20")

