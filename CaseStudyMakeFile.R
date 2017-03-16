## Batch file for gather GDP data and performing analysis.

#Libraries required
install.packages("downloader")
require(downloader)
library(downloader)

#Getting the raw data. This data will have to be cleaned up
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile="GDP.csv")
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv ",destfile="Educ.csv")

#Reading the raw data into an object so that I can clean up the data for analysis. Starting here with GDP
#Options
#skip=5 | This is done to skip some messy headers at the begining of the file
#header=FALSE | Since we're skipping the messy header lines I won't use any headers on the initial read in
#blank.lines.skip=TRUE | Using the head command to peak into the data it's clear there are some blank lines being read in. This should help with clearing those out.
GDP_Wip <- read.csv("GDP.csv",skip=5,header=FALSE,blank.lines.skip=TRUE)

#I just want the 1st(Country Code),2nd(Rank),4th(Full Country Name), and 5th(GDP Amount) columns. The rest are blank
GDP_Wip2 <- GDP_Wip[c("V1","V2","V4","V5")]

#Remove blank lines from GDP_Wip2 for merge
#Removes blank lines between records
GDP_Wip3 <- GDP_Wip2[-c(191, 216, 218), ] 
#removes trailing blank lines
GDP_Wip4 <- GDP_Wip3[1:228,]

#Now I need to clean up the education data. It's still in it's raw form. 
#Options
#blank.lines.skip=TRUE | Using the head command to peak into the data it's clear there are some blank lines being read in. This should help with clearing those out.
Educ_Wip <- read.csv("Educ.csv",blank.lines.skip=TRUE)


#Merge the data sets


#I need to limit the data in my GDP_Wip2 to just the countries
#Now that I have both sets ready to merge I'm going to use the merge function to merge them on their country code values
MergeResult <- merge(GDP_Wip4,Educ_Wip,by.x = "V1",by.y = "CountryCode")

#Answering Question 1: Merge the data based on the country shortcode. How many of the IDs match?
#The above merge will drop any records that did not have a successful join. Therefore to determine
#I want to remove blank columns
testNAGDP <- GDP_Wip[1]
testNAGDP <- testNAGDP[complete.cases(testNAGDP),]
SlimGDP <- setNames(data.frame(as.list(1:5)), GDP_Wip[1,2,])
SlimGDP <- GDP_Wip[1]
str(GDP_Wip)
head(GDP_Wip)

#Reading the raw data into an object for cleaning. Working with country education ducation data here
Educ_Wip <- read.csv("Educ.csv")

str(Educ_Wip)
head(Educ_Wip)
