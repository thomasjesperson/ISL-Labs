#' ISL Labs and Exercises
#' By: Thomas Jesperson

# Setup ----
install.packages('ISLR2')
library(ISLR2)
library(MASS)

# Load Data ----
# Preview Data
head(Boston)
# Initial Linear Regression
lm.fit <- lm(medv ~ lstat, data = Boston)
# Regression output
lm.fit
summary(lm.fit)
names(lm.fit)
confint(lm.fit)
predict(lm.fit, data.frame(lstat = (c(5, 10, 15))), interval = "confidence")
predict(lm.fit, data.frame(lstat = (c(5, 10, 15))), interval = "prediction")
# Plotting data
plot(lstat,medv)
abline(lm.fit)
