# In contrast to other programming languages like C and java in R, 
# the variables are not declared as some data type. The variables are assigned with R-Objects and 
# the data type of the R-object becomes the data type of the variable. There are many types of R-objects. 
# The frequently used ones are −

# Vectors
# Lists
# Matrices
# Arrays
# Factors
# Data Frames


# Logical
v <- TRUE
print(class(v))

# Numeric
v <- 23.5
print(class(v))

# integer
v <- 2L
print(class(v))

# character
a <- "TRUE"
print(class(a))

# raw
r <- charToRaw('Hello')
print(class(r))


'vectors'
# create a vector
apple <- c('red', 'green', 'yellow')
print(apple)

# Get the class of a vector
print(class(apple))



'list'
# A list is an R-object which can contain many different types of elements inside it like vectors, 
# functions and even another list inside it.
list1 <- list(c(2, 5, 3), 21.3, sin)
print(list1)
print(class(list1))

'Matrix'
# A matrix is a two-dimensional rectangular data set. 
# It can be created using a vector input to the matrix function.

m = matrix(c('a', 'a', 'b', 'c', 'b', 'a'), nrow = 2, ncol = 3, byrow = TRUE)
print(m)
print(class(m))

'Arrays'
# While matrices are confined to two dimensions, 
# arrays can be of any number of dimensions. The array function takes a dim attribute 
# which creates the required number of dimension.

a <- array(c('green', 'yellow'), dim = c(3, 3, 2,))
print(a)
print(class(a))

'Factors'
# Factors are the r-objects which are created using a vector. 
# It stores the vector along with the distinct values of the elements in the vector as labels. 
# The labels are always character irrespective of whether it is numeric or character or Boolean etc. 
# in the input vector.

apple_colors <- c('green', 'green', 'yellow', 'red', 'red', 'red', 'green')
factor_apple <- factor(apple_colors)
print(factor_apple)
print(nlevels(factor_apple))
print(class(factor_apple))


'Data Frames'
# Data frames are tabular data objects. Unlike a matrix in data frame each column can contain different modes of data.
# The first column can be numeric while the second column can be character and third column can be logical. 
# It is a list of vectors of equal length.
# Data Frames are created using the data.frame() function.'

BMI <- data.frame(
  gender = c('Male', 'Male', 'Female'),
  height = c(152, 171.5, 165),
  weight = c(81, 93, 78),
  Age = c(42, 38, 26)
)

print(BMI)
