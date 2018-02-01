data <- read.csv("bankloan.csv")
require(dplyr)

View(data)

#Question married subjects only
question1 <- filter(data, data$marital == "married")
View(question1)

#Question married subjects with secondary and tertiary education level
question2 <- filter(data, data$marital == "married", (data$education == "secondary") | (data$education == "tertiary"))
View(question2)

#Question subjects over 40
question3 <- filter(data, data$age >= 40)
View(question3)

#Question single subjects under 35
question4 <- filter(data, data$marital == "single", data$age <= 35)
View(question4)

#Question subjects who have a loan and a balance over 1000
question5 <- filter(data, data$balance >= 1000, data$loan == "yes")
View(question5)
