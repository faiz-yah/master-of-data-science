# Create an R file named matrix.r. The script will ask user to enter M and N. Create a
# matrix with M rows and N columns with random numbers 1-50. Display the matrix
# and then count the number of odd and even numbers in the matrix.

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