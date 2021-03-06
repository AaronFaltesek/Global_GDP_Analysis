## Batch file for gather GDP data and performing analysis.

#Libraries required
#install.packages("downloader")
require(downloader)
library(downloader)

#install.packages("ggplot2")
require(ggplot2)
library(ggplot2)

#Set my directory where i'll be downloading files
setwd("D:/Users/Aaron/Documents/School/SMU/Intro_To_DataScience/Unit_8/Case_Study/Global_GDP_Analysis")
print(getwd())
#Getting the raw data. This data will have to be cleaned up
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile="GDP.csv")
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv ",destfile="Educ.csv")

#This will call an R script that will clean up the data so that I can merge them together
source("CleanData.R", echo = TRUE)

#This will contain the R code to answer question 1
source("Question1.R")

#This will contain the R code to answer question 2
source("Question2.R")

#This will contain the R code to answer question 3
source("Question3.R")

#This will contain the R code to answer question 4
source("Question4.R")

#This will contain the R code to answer question 5
source("Question5.R")

