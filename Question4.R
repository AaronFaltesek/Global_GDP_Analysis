#Question 4: Plot the GDP for all of the countries. Use ggplot2 
#to color your plot by Income Group.

#below I use the ggplot to display the comparison of GDP and income group. I also include colors in the color option. I use geom_jitter because it is useful for comparying a continuous 
#variable against a categorical one. I also use ggtitle to title and change axis names
ggplot(sortedMerge, aes(Income.Group,V5 )) +
  geom_jitter(data = NULL, color=as.integer(factor(sortedMerge$Income.Group)), size = 3) +
  ggtitle("GDP vs Income Groups") +
  labs(x="Income Groups",y="GDP") 