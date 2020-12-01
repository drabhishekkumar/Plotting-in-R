#Correlation-plot-1.R
#Correlation plot in R
#Author: Abhishek Kumar 
#Date: 1-12-2020
# Data generation
set.seed(1)
x <- 1:100
y <- x + rnorm(100, mean = 0, sd = 15)

# Creating the plot
plot(x, y, pch = 16, col = "orange")

# Regression line
abline(lm(y ~ x), col = "black", lwd = 4)

# Pearson correlation
text(paste("Correlation:", round(cor(x, y), 2)), x = 25, y = 95)

