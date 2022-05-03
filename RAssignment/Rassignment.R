# Question 1

print("Sequence of numbers from 1 to 50:")
print(seq(1,50))



# Question 2

Type of Objects

There are 6 basic types of objects in the R language:
  
 1. Vectors

Example:
  
# Create vectors
x <- c(1, 2, 3, 4)
y <- c("a", "b", "c", "d")
z <- 5

# Print vector and class of vector
print(x)
print(class(x))

print(y)
print(class(y))

print(z)
print(class(z))

2. Lists


Example:
  
  # Create list
  ls <- list(c(1, 2, 3, 4), list("a", "b", "c"))

# Print
print(ls)
print(class(ls))

3. Matrices

Syntax:
  
  matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)

Example:
  
  x <- c(1, 2, 3, 4, 5, 6)

# Create matrix
mat <- matrix(x, nrow = 2)

print(mat)
print(class(mat))

4. Factors

Example:
  
  # Create vector
  s <- c("spring", "autumn", "winter", "summer", 
         "spring", "autumn")

print(factor(s))
print(nlevels(factor(s)))

5. Arrays

Syntax:
  
  array(data, dim = length(data), dimnames = NULL)
Example:
  
  # Create 3-dimensional array
  # and filling values by column
  arr <- array(c(1, 2, 3), dim = c(3, 3, 3))

print(arr)

6. Data Frames

Example:
  
# Create vectors
x <- 1:5
y <- LETTERS[1:5]
z <- c("Albert", "Bob", "Charlie", "Denver", "Elie")

# Create data frame of vectors
df <- data.frame(x, y, z)

# Print data frame
print(df)


# Question 3

name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily')
score = c(12.5, 9, 16.5, 12, 9)
attempts = c(1, 3, 2, 3, 2)
print("Original data frame:")
print(name)
print(score)
print(attempts)
df = data.frame(name, score, attempts)  
print(df)

# Accessing first and second row
cat("Accessing first and second row\n")
print(df[1:2, ])

# delete the third row and the second column
newdf = df[-3, -1]

cat("After Deleted the 3rd row and 2nd column\n")
print(newdf)



name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily')
score = c(12.5, 9, 16.5, 12, 9)
attempts = c(1, 3, 2, 3, 2)
print("Original data frame:")
print(name)
print(score)
print(attempts)
df = data.frame(name, score, attempts) 
print(df)
df$country = c("USA","USA","USA","USA","USA")
print(df)

 # add new row(s) to an existing data frame.
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily'),
  score = c(12.5, 9, 16.5, 12, 9),
  attempts = c(1, 3, 2, 3, 2)
)
print("Original dataframe:")
print(exam_data)
new_exam_data = data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3)
)
exam_data =  rbind(exam_data, new_exam_data)
print("After adding new row(s) to an existing data frame:")
print(exam_data)

# Question 4


num = as.double(readline(prompt="Enter a number: "))
if(num > 0) {
  print("Positive number")
} else {
  if(num == 0) {
    print("Zero")
  } else {
    print("Negative number")
  }
}


# Question 5

value <- readline(prompt="Enter a value: ")
if(is.character(value)== TRUE) {
  print("character")
} else {
  if( is.numeric(value== TRUE)) {
    print("numeric")
  } else {
    print("other")
  }
}


# Question 6 :write difference between break and next also write examples for both 

The basic Function of Break and Next statement is to alter 
the running loop in the program and flow the control outside
of the loop. In R language, repeat, for and while loops are
used to run the statement or get the desired output N number 
of times until the given condition to the loop becomes false.


1. Break Statement

Example 1: Using break in For-loop

# R program for break statement in For-loop

no <- 1:10

for (val in no)
{
  if (val == 5) 
  {
    print(paste("Coming out from for loop Where i = ", val))
    break
  }
  print(paste("Values are: ", val))
}

2. Next Statement

Example 1: Using next statement in For-loop

# R Next Statement Example

no <- 1:10

for (val in no)  
{
  if (val == 6)  
  {
    print(paste("Skipping for loop Where i =  ", val))
    next
  }
  print(paste("Values are:  ", val))
}

# Question 7

x= c(1,5.6,3,10,3.5,5)
print("Original vector-1:")
print(x)
rv = rev(x)
print("The said vector in reverse order:")
print(rv)


# Question 8

x <- c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")
var <- calcmode(x)  
print(var)  

# Question 9

library(datasets)
data(iris)
summary(iris)
show(iris)

library(dplyr)
setosa <- filter(iris, species == "setosa")
head(setosa)


# Question 10

iris$Means_of_obs <- apply(iris, 1, mean)
head(iris)

iris_subset <- iris[,-5]

#one less column
dim(iris_subset)
#[1] 150   4

#now let's perform some simple statistics
#calculate the mean of each row

#and add an extra column called mean
iris_subset$mean <- apply(iris_subset, 1, mean)
head(iris_subset)



# Question 11
library(datasets)
data(iris)


library(dplyr)
versicolor <- filter(iris, species == "versicolor")
head(versicolor)


# select all columns from sepal.length to petal.length
selected <- select(versicolor, sepal.length,petal.length)
head(selected, 3)


# Question 12

install.packages("ggplot2")
library(ggplot2)

library(datasets)
data(mtcars)

b <- ggplot(mtcarsb <- ggplot(mtcars,aes(mpg,disp)) + geom_point()  + labs(title = "Scatter Plot") ) + geom_point()  + labs(title = "Scatter Plot")
b

a <- ggplot(mtcars,aes(x = mpg, y = disp, color = factor(cyl))) + geom_point()
a + labs(color = "Cylinders") + xlab("Mileage") + ylab("Displacement") + ggtitle(label = "Scatter plot", subtitle = "mtcars data in R")

mtcars$cyl = factor(mtcars$cyl)
ggplot(mtcars, aes(x=cyl, y=disp)) + geom_boxplot()

p <- ggplot(mtcars, aes(x=cyl, y=disp)) 
p + geom_bar(stat = "identity")

pie <- ggplot(mtcars, aes(x = factor(1), fill = factor(cyl))) +
  geom_bar(width = 1)
pie + coord_polar(theta = "y")


g <- ggplot(mpg, aes(class))
g + geom_bar(aes(fill = drv))


plot(density(mtcars$wt))


