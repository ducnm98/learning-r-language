#At first I set Working Directory at my Folder where I stored the .csv file
setwd("D:/Projects/Github/learning-r-language/Day 1")

#Read file data from .csv
demo <- read.csv("demographics.csv")

#Then we can view data by statement View(object)
View(demo)

#Filter data by choosing a column
demo2 <- demo[2]

#Filter data by choosing columns from 2 to 4
demo2 <- demo[2:4]


#Filter data and variable by column name with condition
demo2 <- demo[demo$gender == "Female",]

demo2 <- demo[demo$gender == "Male",]

demo2 <- demo[(demo$income == 26) | (demo$income == 21),]

#Choosing the columns that I want to show after ","
demo2 <- demo[(demo$income == 26) | (demo$income == 21), 3]

demo2 <- demo[(demo$income == 26) | (demo$income == 21), c(1, 2)]

#Drop the cloumns
demo2 <- demo[(demo$income == 26) | (demo$income == 21), -c(1, 2)]

#Another way to filter data
demo2 <- subset(demo, income == 26)

demo2 <- subset(demo, income == 26, select = c(1, 3))

demo2 <- subset(demo, income == 26, select = c(1:3))

View(demo2)


