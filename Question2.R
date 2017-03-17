#Question 2: Sort the data frame in ascending order by GDP (so United States is last). 
#What is the 13th 
#country in the resulting data frame?

#I want to remove any records that do not have a valid GDP value and remove 
#rows that do not have a income.group value becuase these are not individual contries.
#Considering that the US is supposed to be last I'm assuming the region records 
#are supposed to be dropped. I'm creating a new merge data set without the region records
MergeGDPValid <-MergeResult[!(MergeResult$V5==".." | MergeResult$V5==""),]

#initial order didn't work on the factorial datatype of V5, however it did place
#all non valid country rows at the bottom so I can remove them with the second line of code below
MergeGDPValid <- MergeGDPValid[order(MergeGDPValid$V5),]
MergeGDPValid <- MergeGDPValid[1:189,]

#Convert to integer, had to remove commas to properly convert
MergeGDPValid$V5 <- gsub(",", "", MergeGDPValid$V5)
MergeGDPValid$V5 <- as.integer(as.character(MergeGDPValid$V5))

#order the data frame by the GDP column. Then feed to a new data set
sortedMerge <- MergeGDPValid[order(MergeGDPValid$V5,decreasing = FALSE),]

#Pull the 13th value from the data frame
print(paste(toString(sortedMerge$Long.Name[[13]]),"is the 13th country from the list when ordered by ascending GDP"))