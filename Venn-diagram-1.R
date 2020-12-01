#Venn-diagram-1.R
#Venn-Digramm in R
#Author: Abhishek Kumar 
#Date: 1-12-2020
# Inspired from: Introduction to SAS. UCLA: Statistical Consulting Group. 
# web: https://stats.idre.ucla.edu/sas/modules/sas-learning-moduleintroduction-to-the-features-of-sas/ (accessed December 1, 2020).
# use limma package
library(limma)
# take a dataset from UCLA SAS website
hsb2 <- read.csv("https://stats.idre.ucla.edu/wp-content/uploads/2016/02/hsb2-3.csv") 
attach(hsb2)
# take high writing with scores >=60)
hw <- (write >= 60)
# take high maths with scores >=60)
hm <- (math >= 60)
# take high read with scores >=60)
hr <- (read >= 60)
# take high science with scores >=60)
hs <- (science >= 60)
# take high social science with scores >=60)
ho <- (socst >= 60)
# use limma package
c5 <- cbind(hw, hm, hr, hs, ho)
# use limma package
a <- vennCounts(c5)
# print a 
a
# use  vennDiagram package and print first venn diagram
vennDiagram(a)
# use colorful numbering in the vennDiagram and print second venn diagram
vennDiagram(a, include = "both", 
            names = c("High Writing", "High Math", "High Reading" , "High Science", "High Social Sc."), 
            cex = 1, counts.col = "red")
