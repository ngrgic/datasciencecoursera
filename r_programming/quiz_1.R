#Neven Grgic
#Week1 Quiz
#Rprogramming Coursera Johns Hopkins Data Science Specialization

setwd('/home/vagrant/johns_hopkins_ds/datasciencecoursera/r_programming/')
week1 <- read.csv('hw1_data.csv')

#Q11: Names of the data set columns
names(week1)

#Q12: What do the first two rows look like
head(week1, 2)

#Q13: How many rows in the dataset
nrow(week1)

#Q14: What do the last two rows look like
tail(week1, 2)

#Q15: What is the value of Ozone in the 47th row
week1[47, 'Ozone']

#Q16: How many missing values in the Ozone column
sum(is.na(week1$Ozone))

#Q17: What is the mean of the ozone column
mean(week1$Ozone, na.rm = TRUE)

#Q18: What is the mean of solar.r in the subset of rows where ozone is greater than 31 and temp is above 90?
mean(week1[week1$Ozone > 31 & week1$Temp > 90, 'Solar.R'], na.rm = TRUE)

#Q19: What is the mean of Temp when month is equal to 6
mean(week1[week1$Month == 6, 'Temp'])

#Q20: What is the maximum ozone value in the month of May?
max(week1[week1$Month == 5, 'Ozone'], na.rm = TRUE)