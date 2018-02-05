demo <- read.csv("demographics.csv")

View(demo)

#Trung bình cộng
mean(demo$income)
median(demo$income)

#standard deviation and variance
sd(demo$income)

#quantile is a set of range number that is divided into 4 part of 100%
quantile(demo$income)
#another way to use quantile
quantile(demo$income, probs = c(0.5, 0.9))

demo2 <- cbind(demo$age, demo$income, demo$carpr)
colnames(demo2) <- c("age", "income", "carpr")

require(psych)

#This will show the statistics which is often used in math
describe(demo2)
