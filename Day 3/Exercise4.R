#In the data file brand.csv, 
#create a new variable by averaging the following variables: quality, problems and ads
data <- read.csv("brand.csv")
View(data)

data$newvariable <- (data$quality + data$problems + data$ads) / 3
View(data)
