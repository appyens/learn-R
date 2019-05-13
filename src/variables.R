# A variable provides us with named storage that our programs can manipulate. 
# A variable in R can store an atomic vector, group of atomic vectors or a combination of many Robjects. 
# A valid variable name consists of letters, numbers and the dot or underline characters. The variable 
# name starts with a letter or the dot not followed by a number.

.var_ex = data.frame(
    variable = c('var_name2.', 'var_name%', '2var_name', '.var_name', 'var.name', '.2var_name', '_var_name'),
    validity = c('valid', 'invalid', 'invalid', 'valid', 'valid', 'invalid', 'invalid')
  )
print(.var_ex)

'Variable Assignment'

# Using equal operator
var.1 = c(0, 1, 2, 3)

# Using leftward operator
var.2 <- c('learn R')

# Using rightwords operator
c(TRUE, 1) -> var.3

# print and cat function
print(var.1)
cat ("var.1 is ", var.1 ,"\n")
cat ("var.2 is ", var.2 ,"\n")
cat ("var.3 is ", var.3 ,"\n")

# same variable with different types
var_x = 'Hello'
cat("the class of var_x is ", class(var_x))
var_x <- 34.5
cat("Now the class of var_x is ",class(var_x),"\n")
var_x <- 27L
cat("Next the class of var_x becomes ",class(var_x),"\n")

# to know all the variables currently available in the workspace
print(ls())
# he ls() function can use patterns to match the variable names.
print(ls(pattern = 'var'))


# The variables starting with dot(.) are hidden, they can be listed using "all.names = TRUE" argument to ls() function.
print(ls(all.names = TRUE))


# Deleting Variables
# Variables can be deleted by using the rm() function. Below we delete the variable var.3. On printing the value of the variable error is thrown.
rm(var_ex)
print(var_ex)

# All the variables can be deleted by using the rm() and ls() function together.
rm(list = ls())
print(ls())