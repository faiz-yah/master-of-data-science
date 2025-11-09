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