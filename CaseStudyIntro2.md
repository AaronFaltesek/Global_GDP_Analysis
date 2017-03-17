---
title: "test"
author: "Aaron"
date: "March 16, 2017"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Batch file for gather GDP data and performing analysis.

#Libraries required
#install.packages("downloader")
#install.packages("ggplot2")
```{r libraries}
require(downloader)
library(downloader)

require(ggplot2)
library(ggplot2)
```



#Set my directory where i'll be downloading files
```{r directories}
setwd("D:/Users/Aaron/Documents/School/SMU/Intro_To_DataScience/Unit_8/Case_Study/Global_GDP_Analysis")
print(getwd())
```
#Getting the raw data. This data will have to be cleaned up
```{r directories}
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile="GDP.csv")
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv ",destfile="Educ.csv")
```
#This will call an R script that will clean up the data so that I can merge them together
```{r directories}
source("CleanData.R")
```
#This will contain the R code to answer question 1
```{r directories}
source("Question1.R")
```
#This will contain the R code to answer question 2
```{r directories}
source("Question2.R")
```
#This will contain the R code to answer question 3
```{r directories}
source("Question3.R")
```
#This will contain the R code to answer question 4
```{r directories}
source("Question4.R")
```
#This will contain the R code to answer question 5
```{r directories}
source("Question5.R")
```


```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
