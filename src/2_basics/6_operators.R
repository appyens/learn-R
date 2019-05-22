# Types of Operators
# We have the following types of operators in R programming −

# Arithmetic Operators
# Relational Operators
# Logical Operators
# Assignment Operators
# Miscellaneous Operators

# Arithmetic Operators
v = c(7, 5.5, 6)
t = c(4, 3, 6)
print(v + t)
print(v-t)
print(v*t)
print(v/t)
# modulo
print(v%%t)
# quotient
print(v %/% t)
# exponent
print(v ^ t)


# Relational Operator
v = c(2, 5.5, 6, 9)
t = c(8, 2.5, 14, 9)
print(v > t)
print(v < t)
print(v == t)
print(v <= t)
print(v >= t)
print(v != t)



# Logical operators
# Following table shows the logical operators supported by R language. 
# It is applicable only to vectors of type logical, numeric or complex. 
# All numbers greater than 1 are considered as logical value TRUE.

v = c(3, 1, TRUE, 2 +3i)
t = c(4, 1, FALSE, 2+ 31)
print(v & t)
print(v | t)
print(!t)


# The logical operator && and || considers only the first element of the vectors 
# and give a vector of single element as output.
a = c(3, 0, TRUE, 2+2i)
b = c(1, 3, TRUE, 2+3i)
print(v && t)
print(v || t)


'Assignment Operators'

# left assignment
v1 <- c(1, 2, 3)
v2 <<- c(1, 2, 3)
v3 = c(1, 2, 3)

# Right assignment
c(1, 2, 3) -> v1
c(1, 2, 3) ->> v2
print(v1)
print(v2)


'Miscellaneous Operators'

# These operators are used to for specific purpose 
# and not general mathematical or logical computation.

# colon : (python range function)
# It creates the series of numbers in sequence for a vector.
v = 2:8
print(v)


# %in% (like python membership)
v1 <- 8
v2 <-12
t = 1:10
print(v1 %in% t)
print(v2 %in% t)

# %*%
# This operator is used to multiply a matrix with its transpose.
m = matrix(c(1:6), nrow = 2, ncol = 3, byrow = TRUE)
print(m)
# transpose function
print(t(m))
c = m %*% t(m)
print(c)