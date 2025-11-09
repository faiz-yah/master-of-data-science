# WQD7004 Programming for Data Science
# Lab 4 Flow Control

# Faiz Yah 9Nov25

# 1. Write R scripts using the selection flow control for each of the following.
# a. Determine the biggest number among three numbers.
a <-100
b <-20
c <-30
if((a>b) && (a>c)){
    print(paste(a, 'is the biggest number among the three numbers'))
} else if ((b>a) && (b>c)){
  print(paste(b, 'is the biggest number among the three numbers'))
} else if ((c>a) && (c>b)){
  print(paste(c, 'is the biggest number among the three numbers'))
}

# b. A switch statement that displays Sunday, Monday, …, Saturday, if the number
# is 0, 1, ... 6.
day_number <- 3
day_name <- switch(day_number+1,
                   "Sunday",
                   "Monday",
                   "Tuesday",
                   "Wednesday",
                   "Thursday",
                   "Friday",
                   "Saturday")
print(day_name)
# c. Determine whether the year is a leap year. A leap year is divisible by 4 but not
# by 100. A leap year is also divisible by 400.
input_year <-2000
if((input_year %% 4==0) && (input_year %% 100!=0)) {
  print(paste(input_year, "is a leap year"))
} else {
  print(paste(input_year, "is not a leap year"))
}


# 2. Write R scripts using the ifelse() function for each of the following.
# a. Determine the positive and negative number in the vector.
random_vector <- c(-2,5,10,-33,500,2,-44,1)
pos_or_neg<-ifelse(random_vector>0,"Positive Number","Negative Number")
print(pos_or_neg)
# b. Determine whether a character in the vector is uppercase or lowercase letter.
random_char <-c("A","d","t","G","R","l","q")
up_or_low<-ifelse(random_char == toupper(random_char),"Uppercase","Lowercase")
print(up_or_low)
# c. Compare the numbers from two vectors to determine whether a number is
# larger than, smaller than or equal to another number.
v1 <- c(10, 22, -3, 100, 5)
v2 <- c(98, 0, -12, 10, 5)
compare <- ifelse(v1 > v2, "V1 larger than V2", 
                  ifelse(v1 < v2, "V2 larger than V1", "V1 equal to V2"))
print(compare)

# 3. Create an R file named calculator.r that stimulates a simple calculator. It reads two
# numbers and an operator. If the operator is +, the sum is printed; if it is -, the
# difference is printed; if it is x, the multiplication is printed; if it is /, the quotient is
# printed.
# Example Output:
cat("Enter two numbers:")
numbers <- as.numeric(readLines("stdin",2))
num1 <- numbers[1]
num2 <- numbers[2]
cat("Enter operator")
operator <- readLines("stdin",1)
if (operator == "+") {
  result <- num1 + num2
  cat(num1,operator,num2, "=", result, "\n")
} else if (operator == "-") {
  result <- num1 - num2
  cat(num1,operator,num2, "=", result, "\n")
} else if (operator == "x") {
  result <- num1 * num2
  cat(num1,operator,num2, "=", result, "\n")
} else if (operator == "/") {
  if (num2 != 0) {
    result <- num1 / num2
    cat(num1,operator,num2, "=", result, "\n")
  } else {
    cat("Error: Division by zero is not allowed.\n")
  }
} else {
  cat("Error: Invalid operator.\n")
}


# 4. Create an R file named circle.r. The script will ask user to enter the radius of a circle
# and a coordinate point (x, y). Determine whether the point is inside or outside the
# circle centered at (0, 0).
# Example Output:
cat("Enter radius of a circle:")
radius <- as.numeric(readLines("stdin",1))

cat("Enter coordinate x and y:")
coordinate <-as.numeric(readLines("stdin",2))
x <- coordinate[1]
y <- coordinate[2]

o1 <- ifelse((x^2 + y^2) < radius^2, 
             sprintf("(%g,%g) is in the circle", x, y),
             sprintf("(%g,%g) is outside the circle", x, y))
print(o1)


# 5. Write R statements using loop flow control for each of the following
# a. Find the largest integer n so that n3
# is less than 2000.
n<-1L
while(n^3<2000){
  n<-n+1
}
print(n)
# b. Compute the sum of the series: 1/25+2/24+3/23 … + 25/1 in two decimal
# places.
sum_total<-0
for(i in 1:25){
  sum_total <- sum_total + (i/(26-i))
}
result<-round(sum_total,2)
print(result)

# c. Display the first ten values of the Fibonacci sequence. Given the formula f1 =
# 1, f2 =1, fn = fn-1 + fn-2.
f_vec <-c(1,1)

for(i in 3:10){
  f_vec[i] <- f_vec[i-1] + f_vec[i-2]
}
print(f_vec)

# 6. Create an R file named score.r. The script will calculate the minimum, maximum,
# average and standard deviation (s) of the exam score in a subject. The program will
# accept the score and quit if negative score is entered.
# Example Output:

cat("Enter a score [negative score to quit]:")
score1 <- as.numeric(readLines("stdin",1))
if (score1 < 0) {
  quit()
}

cat("Enter a score [negative score to quit]:")
score2 <- as.numeric(readLines("stdin",1))
if (score1 < 0) {
  quit()
}

cat("Enter a score [negative score to quit]:")
score3 <- as.numeric(readLines("stdin",1))
if(score3 < 0) {
  quit()
}

cat("Enter a score [negative score to quit]:")
score4 <- as.numeric(readLines("stdin",1))
if(score4 < 0) {
  quit()
}

cat("Enter a score [negative score to quit]:")
score5 <- as.numeric(readLines("stdin",1))
if(score5 < 0) {
  quit()
}

scores <- c(score1, score2, score3, score4, score5)

print(paste("Minimum score", min(scores[scores >= 0])))
print(paste("Maximum score", max(scores[scores >= 0])))
print(paste("Average score", round(mean(scores[scores >= 0]), 2)))
print(paste("Standard Deviation", round(sd(scores[scores >= 0]), 2)))

# 7. Create an R file named matrix.r. The script will ask user to enter M and N. Create a
# matrix with M rows and N columns with random numbers 1-50. Display the matrix
# and then count the number of odd and even numbers in the matrix.
# Example Output:
cat('Enter M and N:')
matrix_dims <- as.numeric(readLines("stdin", 2))
M <- matrix_dims[1]
N <- matrix_dims[2]

matrix1 <- matrix(sample(1:50, M*N), nrow = M, ncol = N)

print(matrix1)


odd_count <- 0
even_count <- 0

for(i in 1:M) {
  for(j in 1:N) {
    if(matrix1[i, j] %% 2 == 0) {
      even_count <- even_count + 1
    } else {
      odd_count <- odd_count + 1
    }
  }
}

print(paste("Number of odd numbers in the matrix is:", odd_count))
print(paste("Number of even numbers in the matrix is:", even_count))
