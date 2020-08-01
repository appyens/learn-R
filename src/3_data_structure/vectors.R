# Vectors
# Vectors are the most basic R data objects and there are six types of atomic vectors. 
# They are logical, integer, double, complex, character and raw.

"vector creation"
# Since, a vector must have elements of the same type, this function will try and coerce elements to the same type, if they are different.
# Coercion is from lower to higher types from logical to integer to double to character.
x <- c(1, 5, 4, 9, 0)
typeof(x)
length(x)
x <- c(1, 5.4, TRUE, 'hello')
typeof(x)

# If we want to create a vector of consecutive numbers, the : operator is very helpful.

# Example 1: Creating a vector using : operator

x <- 1:7; x
y <- 2:-2; y

# More complex sequences can be created using the seq() function, like defining number of points in an interval, or the step size.

seq(1, 3, by = 0.2)
seq(1, 5, length.out = 5)



# single element vector
# even when you write just one value in R, it becomes a vecotr of length 1 and 
# belongs to one of the above vector types

# Atomic vector of type character
print("abc")

# Atomic vector of type double
print(12.5)

# Atomic vector of type integer
print(63L)

# Atomic vector of type logical
print(TRUE)

# Atomic vector of complex
print(2+3i)

# Atomic vector of type raw
print(charToRaw('hello'))


"Multiple Elements Vector"
# 1. Using colon operator with numeric data

# creating a sequece from 5 to 13
v <- 5:13
print(v)

# creating a squence from 6.6 to 12.6
v <- 6.6:12.6
print(v)

# if the final element specified does not belong to the sequence then it is discarded
v <- 3.8:11.4
print(v)

# 2. Using sequence operator
# create vector with elements from 5 to 9 increamenting by
print(seq(5, 9, by = 0.4))

# 3. Using c() function
# The non-character values are coerced to character type if one of the elements is a character.

s <- c('apple', 'red', 5, TRUE)
print(s)


"Accessing Vector Elements"

# Elements of a Vector are accessed using indexing. 
# Elements of a vector can be accessed using vector indexing. The vector used for indexing can be logical, integer or character vector.
# 
# Using integer vector as index
# Vector index in R starts from 1, unlike most programming languages where index start from 0.
# We can use a vector of integers as index to access specific elements.
# We can also use negative integers to return all elements except that those specified.
# But we cannot mix positive and negative integers while indexing and real numbers, if used, are truncated to integers.

x
x[3]     # access 3rd element
x[c(2, 4)]   # access 2nd and 4th element
x[-1]   # access all but 1st element
x[c(2, -4)] # cannot mix positive and negative integers
x[c(2.4, 3.54)] # real numbers are truncated to integers

# Using logical vector as index
# When we use a logical vector for indexing, the position where the logical vector is TRUE is returned.
# This useful feature helps us in filtering of vector as shown below.
x[c(TRUE, FALSE, FALSE, TRUE)]
x[x < 0] # filtering vectors based on conditions
x[x > 0]
# 
# In the above example, the expression x>0 will yield a logical vector (FALSE, FALSE, FALSE, TRUE) which is then used for indexing.
# Using character vector as index
# This type of indexing is useful when dealing with named vectors. We can name each elements of a vector.


x <- c("first"=3, "second"=0, 'third'=9)
names(x)
x['second']
x[c('first', 'third')]

# 
# How to modify a vector in R?
# We can modify a vector using the assignment operator.
# 
# We can use the techniques discussed above to access specific elements and modify them.
# 
# If we want to truncate the elements, we can use reassignments.

x[2] <- 0 # modify 2nd element
x[x<0] <- 5; x #modify elements less than 0
x <- x[1:4]; x  # truncate x to first 4 elements
# 
# How to delete a Vector?
# We can delete a vector by simply assigning a NULL to it.
x
x <- NULL
x
x[4]


# The [ ] brackets are used for indexing. 
# Indexing starts with position 1. 
# Giving a negative value in the index drops that element from result.
# TRUE, FALSE or 0 and 1 can also be used for indexing.

# Accessing vector elements using position:
t <- c("Sun", "Mon", "Tue", "Wed", "Thurs", "Fri", "Sat")
u <- t[c(2, 3, 6)]
print(u)

# Accessing vector elements using logical indexing
v <- t[c(TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE)]
print(v)

# Accessing vector elements using negative indexing
x <- t[c(-2, -5)]
print(x)

# Accessing vector elements using 0/1 indexing
y <- t[c(0, 0, 0, 0, 0, 0, 1)]
print(y)


"Vector Manipulation"
# arithmetic

# Two vectors of same length can be added, subtracted, multiplied or divided giving the result as a vector output.

v1 <- c(3, 8, 4, 5, 0, 11)
v2 <- c(4, 11, 0, 8, 1, 2)

# operation
add.result <- v1 + v2
sub.result <- v1 - v2
multi.result <- v1 * v2
div.result <- v1/v2

print(add.result)
print(sub.result)
print(multi.result)
print(div.result)


"Vector Element Recycling"
# If we apply arithmetic operations to two vectors of unequal length, 
# then the elements of the shorter vector are recycled to complete the operations.

v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11)
# v2 becomes c(4, 11, 4, 11, 4, 11)

add.result <- v1 + v2
print(add.result)

sub.result <- v1 - v2
print(sub.result)

"Vector Element Sorting"
# Elements in a vector can be sorted using the sort() function.

# sort the elements
v <- c(3, 8, 4, 5, 0, 11, -9, 304)
sort.result <- sort(v)
print(sort.result)

# sort the elements in the reverse order
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

# sorting character vectors
v <- c("Red", "Blue", "yellow", "voilet")
sort.result <- sort(v)
print(sort.result)

# sorting character vectors in reverse order
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)