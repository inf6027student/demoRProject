# This is an example R file to demonstrate the use of Git 


# **************************************************************#
# Loading in data from CSV file
# **************************************************************#

# load in complete medal table from file (csv file).
# You will have to replace the file name with the correct path on your computer
rio2016Medals<-read.csv("data/Rio2016.csv", header=TRUE)
View(rio2016Medals)

head(rio2016Medals)

# Exercise: compute total number of gold, silver and bronze medals scored
rio2016Medals$Total<-rowSums(rio2016Medals[c("Gold","Silver","Bronze")])


# Exercise: order the rows by the total of medals won
rio2016Medals[order(-rio2016Medals$Total, -rio2016Medals$Gold),] #two orders, descendant, all columns


# Exercise: compute total number of gold, silver and bronze medals scored
colSums(rio2016Medals[c("Gold","Silver","Bronze","Total")])


# Now have a go at this tutorial: 
# http://www.r-tutor.com/r-introduction/data-frame


# The W3schools tutorial on R is also a helpful site to look at 
# https://www.w3schools.com/r/


# **************************************************************#
# Optional
# **************************************************************#

library(MASS)
data("women")
women
# That's all folks!