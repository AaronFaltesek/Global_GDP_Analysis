#Question 5:Cut the GDP ranking into 5 separate quantile groups. Make a table versus Income.Group.
#How many countries are Lower middle income but among the 38 nations with highest
#GDP?

#The below is uesd to divide the data up into quantiles. 
sortedMergeQuantTest <- within(sortedMerge, quantile <- as.integer(cut(V5, quantile(V5, probs=0:5/5), include.lowest=TRUE)))

#now that i have the quantiles i want to make a table of quant vs income
testTable <- table(sortedMergeQuantTest$quantile,sortedMergeQuantTest$Income.Group)

#now I need to determine how many countries are in the top 38 countries by GDP and in the lower middle income group
#this would be cell row 5, column 4. 
#I use a cleanup table to remove an unnessesary columnn
cleanUpTable <- testTable[,2:6]
print(cleanUpTable)
print(paste(cleanUpTable[5,4],"countries are in the top 38(top quantile based on GDP) and also in the lower middle income group category"))
