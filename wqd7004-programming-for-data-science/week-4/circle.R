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