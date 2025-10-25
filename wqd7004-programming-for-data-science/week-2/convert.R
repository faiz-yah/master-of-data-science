#Q8 Create an R file named convert.r that used to convert inch to centimeters. Given 1 
#inch equals to 2.54 centimeters. Display the value of centimeters in two decimal 
#places. Run the r file using terminal. Example output:
cat("Enter the length in inches:")
user_input <- as.numeric(readLines("stdin",1))
to_cm <- user_input*2.54
cat(user_input, "inches =", round(to_cm,2), "centimeters")