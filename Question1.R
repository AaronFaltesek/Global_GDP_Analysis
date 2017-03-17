
#Question 1: Merge the data based on the country shortcode. How many of the IDs match?
#Merge the data sets
#I need to limit the data in my GDP_Wip2 to just the countries
#Now that I have both sets ready to merge I'm going to use the merge function to merge them on their country code values
MergeResult <- merge(GDP_Wip4,Educ_Wip,by.x = "V1",by.y = "CountryCode")


#GDPLength <- nrow(GDP_Wip4)
#EducLength <- nrow(Educ_Wip)

#The merge will not carry over any rows that do not mathc, therefore the nrow function returns the # of rows 
#that successfully joined. This value comes out at 224
MergeLength <- nrow(MergeResult)
cat(paste(toString(MergeLength) ,"rows were successfully joined."))