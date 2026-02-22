# Create an R file named sales.r that get the price of item from the user and then 
# display the new discount price for the item based on discounts of 50%, 30% and 10%.
# Run the r file using terminal. Example output:
cat("Enter the price of items : ")
price_input <- as.numeric(readLines("stdin", 1))
discount_50 <- price_input * 0.50
discount_30 <- price_input * (1-0.30)
discount_10 <- price_input * (1-0.10)
cat("The price of item after 50% discount it", discount_50)
cat("\nThe price of item after 30% discount it", discount_30)
cat("\nThe price of item after 10% discount it", discount_10)