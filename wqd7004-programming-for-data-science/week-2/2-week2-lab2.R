# WQD7004 Programming for Data Science
# Lab 2 Basics in R 
# Faiz Yah 25Oct25

#Q1 In each case, what is the value of x?
x<-2-1*2
print(x)
x<-6/3-2+1*0+3/3-3
print(x)
x<-19%%17%%13
print(x)
x<-(19%%17)%%13
print(x)
x<-19%%(17%%13)
print(x)
x<-2^17%%17
print(x)
x<-3-2%%5+3*2-4/2
print(x)

#############################################################################

#Q2 Shorten the notation of following vectors
# x<-c(157, 158, 159, 160, 161, 162, 163, 164)
x<-c(157:164)
print(x)

x<-seq(157,164,1)
print(x)

# x<-c(10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
x<-c(10:1)
print(x)

x<-seq(10,1,-1)
print(x)

# x<-c(-1071, -1072, -1073, -1074, -1075, -1074, -1073, -1072, -1071)
x<-c(-1071:-1075, -1074:-1071)
x

# x<-c(1.5, 2.5, 3.5, 4.5, 5.5)
x<-seq(1.5,5.5,1)
x

#############################################################################
#Q3 Create a vector x of with the following value (0.15, 1.30, 3.45, 5.75). 
# Then display the vector in character and integer.
x<-c(0.15, 1.30, 3.45, 5.75)
print(as.character(x))
x<-c(0.15, 1.30, 3.45, 5.75)
print(as.integer(x))

#############################################################################
#Q4 Create a vector y based on the requirements below:
##a. A sequence of 10 numbers from 20-11
y<-seq(20,11)
print(y)
##b. A sequence of odd numbers from 11-20
y<-seq(11,20,2)
print(y)
##c. A sequence of first twelve square number starting from 1.
y<-(1:12)^2
print(y)
##d. A sequence of first eleven exponential number of 2 starting from 1.
y<-2^(1:10)
print(y)

#############################################################################
#Q5 Create a vector z based on the requirements below:
#a. A sequence of 10 W
z<-rep('W',times=10)
print(z)
#b. A sequence of R R R S S S 
z<-rep(c("R","S"),each=3)
print(z)
#c. The first 5 alphabets in lower case
z<-letters[1:5]
print(z)
#d. A sequence of players from Player1 – Player10
#z<-c(rep("Player",times=10),c(1:10))
z <- paste("Player", 1:10, sep="")
print(z)

#############################################################################
#Q6 Create a vector z based on the requirements below:
##a. Display the vector
Mtut1 <-c(c)
##b. What is the total mark for Abu?
##c. Display the percentage for each student in two decimal places if the total mark 
#is 30.

#############################################################################
#Q7. Create a vector num of size 10 with any random value from 51-100. 
#Display the vector and then assign all the even numbers to a new vector named even.
set.seed(99)
num<-sample(51:100,10)
num
even<-num[num%%2==0]
print(even)

#Q8 Create an R file named convert.r that used to convert inch to centimeters. Given 1 
#inch equals to 2.54 centimeters. Display the value of centimeters in two decimal 
#places. Run the r file using terminal. Example output:
cat("Enter the length in inches:")
user_input <- as.numeric(readLines("stdin",1))
to_cm <- user_input*2.54
cat(user_input, "inches =", to_cm, "centimeters")

#Q9. 