demo <- read.csv("demographics.csv")

View(demo)

#Using package dplyr
install.packages("dplyr")
require(dplyr)

#Filter data with condition or and other condition
demo2 <- filter(demo, (income == 21) | (income == 26), marital == "Unmarried")

#Chossing some variable of dplyr's package
#While structer select (x, y, z, etc) with x is the Data and y, z, etc are variables
demo2 <- select(demo, age, marital)

#Backup Data
demo3 <- demo

#Record the variables
#In this case I add a new variales with Male is 1, Female is 2
demo3$gender2[demo3$gender == "Male"] = 1
demo3$gender2[demo3$gender == "Female"] = 2

#Now I try to change their variables
demo3 <- demo
#This does not work correctly without temp variable
demo3$gender[demo3$gender == "Male"] = 1
demo3$gender[demo3$gender == "Female"] = 2

#Try by another way by using a package plyr
#This works better
require(plyr)
demo3$gender = revalue(demo3$gender, c("Male" = 1, "Female" = 2))

#There is an important attention that if the variables are not a factor, we have to convert it
#into factor
#Factors are variables in R which take on a limited number of different values
#For example
data = c(1,2,2,3,1,3,2,3,1,2,3,2,3,2)
fdata = factor(data)
#Output is levels: 1, 2, 3 (with 1, 2, 3 are factors of data)

#If we want to group some type of variables, we can use cut function
demo3 = demo
demo3$incat <- cut(demo3$income,c(-Inf, 150, 300, Inf), c("Low income", "Medium income", "High income"))
#To make it more clearly
demo3$incat <- cut(demo3$income, breaks = c(-Inf, 150, 300, Inf), labels = c("Low income", "Medium income", "High income"))
View(demo3)

#Sorting variables
#Default ss ascending
demo2 <- demo[order(demo$income, demo$age),]

#Descending 
demo2 <- demo[order(-demo$income),]
View(demo2)

#Add new variables and calculate on it
math <- read.csv("math.csv")
math$avg = (math$grade1 + math$grade2) / 2
View(math)
