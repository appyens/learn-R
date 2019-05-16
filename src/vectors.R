# Vectors are the most basic R data objects and there are six types of atomic vectors. 
# They are logical, integer, double, complex, character and raw.

"vector creation"
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