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


