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



View(demo3)


View(demo2)
