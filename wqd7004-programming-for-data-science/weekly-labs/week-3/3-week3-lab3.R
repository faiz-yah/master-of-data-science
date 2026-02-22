# WQD7004 Programming for Data Science
# Lab 3 Data Structure

# Faiz Yah 2Nov25

# 1. Create a list using R with the following values g1=1:10, g2="R Programming", g3=
# "HTML". Then, count the number of objects in the list. After that, get the length of
# the first two vectors of the given list.
list_data <- list(c(1:10),"R Programming", "HTML")
names(list_data) <-c("g1", "g2", "g3")
print(length(list_data))
print(length(list_data[[1]]))
print(length(list_data[[2]]))

# 2. Find all elements of a list2 that are not given in list1 using R. Given list1 consists of
# "x", "y", "z" and list2 consists of "x", "y", "z", "X", "Y", "Z". (You can use the
# setdiff())
list1 <- list("x", "y", "z")
list2 <- list("x", "y", "z", "X", "Y", "Z")
result <- setdiff(unlist(list2), unlist(list1))
print(result)

# 3. Create a list using the following values ("G022", "G003", "G013", "G007", "G012"
# and then list down the number of items in the list. Then, display the second element in
# the list. After that, add a new item "G018"to the list and then display the list in
# ascending order.
list_values <- list("G022", "G003", "G013", "G007", "G012")
print(length(list_values))
print(list_values[[2]])
list_values[[6]] <- "G018"
sorted_values <- sort(unlist(list_values))
sorted_values

# 4. Create four vectors a, b, c, and d with 3 integers. Combine all the vectors to become a
# 4x3 matrix. Add a vector with sequence of number from 1 to 4 to the matrix by row.
a <- c(10L,20L,30L)
b <- c(5L,4L,2L)
c <- c(9L,6L,3L)
d <- c(22L,33L,44L)
m1 <- matrix(c(a,b,c,d), 4,3, byrow = TRUE)
m1
e <- c(1L:3L)
m1 <- rbind(m1,e)
m1


# 5. A and B is a 3x4 matrix. Create an R Script to multiply matrix A and B to get the 3x3
# dimension.
A <- matrix(1:15, 3,4)
B <- matrix(25:30,3,4)
mul_mat <- A%*%t(B)
mul_mat

# 6. Create a matrix with 10 rows and 2 columns, extract a sub-matrix from original
# matrix which includes the last 5 rows.
matrix_sample <-matrix(seq(5,100,by=3),nrow=10,ncol=2)
matrix_sample
sub_mat<- matrix_sample[6:10,]
sub_mat

# 7. A square matrix A is said to be invertible if there exists a matrix B such that AB =
# BA = I. Generate a 2x2 matrix A as below. Then, compute B.
a1<-c(2,2)
a2<-c(4,2)
A <- matrix(c(a1,a2), nrow=2, ncol=2, byrow=TRUE)
I <- matrix(diag(2),nrow=2,ncol=2)
B <- solve(A)
B
B %*% A == I

# 8. With regards to the mtcars dataset:
# ▪ retrieve the number of columns
# ▪ retrieve the number of rows
# ▪ retrieve data value from row 3 and column 5
# ▪ retrieve data value from row 3 and column 5 using the names
# ▪ retrieve data of a row (Volvo 142E)
# ▪ retrieve data of column mpg
# ▪ retrieve data of column hp and qsec
mtcars
print(ncol(mtcars))
print(nrow(mtcars))
mtcars[3,5]
mtcars[3, 'drat']
mtcars['Volvo 142E',]
mtcars$mpg
mtcars[,c('hp','qsec')]



# 9. Create a DataFrame using the following data. SK020 is the ProductCode, Enfagrow
# A+ is the ProductName and 36.79 is the Price. Then, solve the following statements
# SK020,Enfagrow A+,36.79
# SK042,Ayamas Nuget Crispy,9.99
# SK013,100 Plus,6.49
# SK066,Ali Cafe,8.99
# SK079,Dettol Natural,4.99
# ▪ Display the information above in a table.-
# ▪ Display the information above in a table sort by product name in ascending
# order.
# ▪ Add a new product SK023, Johnson PH, 5.99 to the data frame and display
# the information in a table sort by product name in ascending order.
# ▪ Display all rows where product price more than 8.00.
# ▪ Display the product with maximum price and minimum price.
# ▪ Count the number of items where the product name begins with "A"'

data1 <- data.frame(
  ProductCode = c('SK020','SK042','SK013','SK066','SK079'),
  ProductName = c('Enfagrow A+','Ayamas Nuget Crispy','100 Plus','Ali Cafe','Dettol Natural'),
  Price = as.numeric(c(36.79,9.99,6.49,8.99,4.99))
)
data1
data1[order(data1$ProductName),]

new_product <- data.frame(
  ProductCode = 'SK023',
  ProductName = 'Johnson PH',
  Price = 5.99
)
data1 <- rbind(data1, new_product)
data1[order(data1$ProductName),]

data1[(data1$Price > 8),]
data1[data1$Price == max(data1$Price),]
data1[data1$Price == min(data1$Price),]
sum(startsWith(data1$ProductName, "A"))
