# Create an R file named score.r. The script will calculate the minimum, maximum,
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