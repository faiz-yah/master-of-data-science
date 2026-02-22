# WQD7004 Programming for Data Science
# Lab 1 Getting to know R 
# Faiz Yah 18Oct2025

# 1. Installation of R (https://cran.rstudio.com/) and RStudio
(https://www.rstudio.com/products/rstudio/download/)

# 2. Create a vector named num with four elements (2, 0, 4, 6).
##   a. Display the third element of the vector.
##   b. Display the all elements of the vector except first element.
##   c. Count the number of elements in the vector.

num <- c(2,0,4,6)
num[3]
num[-1]
length(num)

# 3. Create a vector named q3 that add two numbers 3 and 5. 
# After that, add 100 to this vector and display the output.
q3 <- 3+5
q3 <- q3+100

# 4. Create a vector named animal that consists of cat, tiger, lion and elephant. 
# Display the vector. After that, append monkey and cow to the vector and display the output.
animal <- c('cat','tiger','lion','elephant')
animal
animal <- c(animal, 'monkey', 'cow') ## or use append() function
animal

# 5. Create two vectors named n1 and n2 of integers type (any number) and of length 3.
# Then, add and multiply the two vectors.
n1 <- c(3L,4L,5L)
n2 <- c(10L,100L,35L)
n1 + n2
n1 * n2

# 6. Create a vector x of size 4 with any value from 1-10.
## a. Display the sum, mean, minimum and the maximum of the vector x.
## b. Append 3 values (11-20) to the vector x created. Display the sum, mean,
##    minimum and the maximum of the vector.
## c. Display the first two values and last two values of vector x.
## d. Assign the vector x in ascending order to s1, descending order to s2 and
##    reverse order to s3.
## e. Display the second highest value in vector x.
## *mean in two decimal places.

# 6a
x <- c(8,5,3,7)
# 6b
sum(x)
mean(x)
min(x)
max(x)
# 6c
x[1:2]
x[-1:-2]
# 6d
s1 <- sort(x)
s2 <- sort(x, decreasing=TRUE)
s3 <- rev(x)
# 6e
s2[2]

# 7. Create an R file named total.r that get two integer input from user. 
# Display the total of the input. Run the r file using terminal. Example output:
cat("Enter two numbers:")
number_input <- readLines("stdin", 2)
num1 <- as.numeric(number_input[1])
num2 <- as.numeric(number_input[2])
cat(num1, "+", num2, "=", num1+num2)
