#Question 3: What are the average GDP rankings for the "High income: OECD" and "High income:
#nonOECD" groups?

#I can use the sorted data from question 2 since it has removed all rows 
#for regions and empty GDP values

#I want to only pull High income:OECD countries first
HighIncOECD <- sortedMerge[(sortedMerge$Income.Group=="High income: OECD"),] 

#Take the average income of this subset 
HighIncOECDAvg <- mean(as.integer(as.character(HighIncOECD$V2)))
paste(HighIncOECDAvg,"is the mean rank of the High income: OECD countries.")

#Now I want o t answer the second part of the question, pulling a subset of nonOECD countries
HighIncNon <- sortedMerge[(sortedMerge$Income.Group=="High income: nonOECD"),] 

#Take the average income of this subset 
HighIncNonAvg <- mean(as.integer(as.character(HighIncNon$V2)))
print(paste(HighIncNonAvg,"is the mean of the High income: nonOECD countries."))
