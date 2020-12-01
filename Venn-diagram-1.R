#Venn-Digramm in R
# use limma package
library(limma)
# take a dataset from ucla
hsb2 <- read.csv("https://stats.idre.ucla.edu/wp-content/uploads/2016/02/hsb2-3.csv") 
attach(hsb2)
# take high writing scores >=60)
hw <- (write >= 60)
# take high maths scores >=60)
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
# use  vennDiagram package
vennDiagram(a)
# use colorful numbering in the vennDiagram
vennDiagram(a, include = "both", 
            names = c("High Writing", "High Math", "High Reading"), 
            cex = 1, counts.col = "red")
