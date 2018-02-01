data <- read.csv("bankloan.csv")

#Question sort by age, ascending
question1 <- data[order(data$age),]
View(question1)

#Question sort by balance, descending
question2 <- data[order(-data$balance),]
View(question2)

#Question sort by age descending and by balance ascending
question3 <- data[order(data$age, -data$balance),]
View(question3)
