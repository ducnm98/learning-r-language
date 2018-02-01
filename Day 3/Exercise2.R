data <- read.csv("bankloan.csv")
require(plyr)

#Question recode the variable marital as follows: married – 1, single – 0
data$marital <- revalue(data$marital, c("married" = 1, "single" = 0))
View(data)

#Question recode the variable loan as follows: yes – 1, no – 0
data$loan <- revalue(data$loan, c("yes" = 1, "no" = 0))
View(data)

#Question recode the variable balance as follows: under 500 – 1, between 501 and 1000 – 2, over 1000 – 3.
data$balance1 <- cut(data$balance, breaks = c(-Inf, 500, 1000, Inf), labels = c("1", "2", "3"))
View(data)

