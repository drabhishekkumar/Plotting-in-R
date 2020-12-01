#Venn-Digramm in R
# use limma package
library(limma)
# take a dataset from ucla
hsb2 <- read.csv("https://stats.idre.ucla.edu/wp-content/uploads/2016/02/hsb2-3.csv") 
attach(hsb2)
# use limma package
hw <- (write >= 50)
# use limma package
hm <- (math >= 50)
# use limma package
hr <- (read >= 50)
# use limma package
c3 <- cbind(hw, hm, hr)
# use limma package
a <- vennCounts(c3)
# print a 
a
# use  vennDiagram package
vennDiagram(a)
# use colorful numbering in the vennDiagram
vennDiagram(a, include = "both", 
            names = c("High Writing", "High Math", "High Reading"), 
            cex = 1, counts.col = "red")