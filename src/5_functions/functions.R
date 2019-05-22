# defining function without argument
myfunc <- function(name){
 cat("Hi", name) 
}
# 
# Here, we can see that the reserved word function is used to declare a function in R.
# The statements within the curly braces form the body of the function. These braces are optional if the body contains only a single expression.
# Finally, this function object is given a name by assigning it to a variable, func_name.

pow <- function(x, y){
  result <- x^y
  print(paste(x, "raised to the power", y, "is", result))
}
 
# Here, we created a function called pow().
# It takes two arguments, finds the first argument raised to the power of second argument and prints the result in appropriate format.
# We have used a built-in function paste() which is used to concatenate strings.


# defining funciton with argument
new.func <- function(num){
  for (i in num){
    cat("square of", i, "is", i^2, '\n')
  }
}

# calling a funciton
v = seq(1:10)

# passing argument
myfunc("Anurag")
new.func(v)

"Calling a Function with Argument Values (by position and by name)"
# defining function with arguments
test.func <- function(a, b, c){
  result <- a * b + c
  cat("the result is ", result)
}
# 
# Named Arguments
# In the above function calls, the argument matching of formal argument to the actual arguments takes place in positional order.
# This means that, in the call pow(8,2), the formal arguments x and y are assigned 8 and 2 respectively.
# We can also call the function using named arguments.
# When calling a function in this way, the order of the actual arguments doesn’t matter. For example, all of the function calls given below are equivalent.
# 
pow(8, 2)
pow(x = 8, y = 2)
pow(y = 2, x = 8)
# 
# Furthermore, we can use named and unnamed arguments in a single call.
# In such case, all the named arguments are matched first and then the remaining unnamed arguments are matched in a positional order.


pow(x = 8, 2)
pow(2, x = 8)

# In all the examples above, x gets the value 8 and y gets the value 2.
# 
# Default Values for Arguments
# We can assign default values to arguments in a function in R.
# This is done by providing an appropriate value to the formal argument in the function declaration.
# Here is the above function with a default value for y.

pow <- function(x, y = 2){
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}

# The use of default value to an argument makes it optional when calling the function.

pow(3)
pow(3, 1)

# Here, y is optional and will take the value 2 when not provided.


# call the function by position of arguments
test.func(5, 3, 11)

# call the function by names of the arguments
test.func(b = 5, a = 45, c = 90)

# calling a function with default argument

# We can define the value of the arguments in the function definition 
# and call the function without supplying any argument to get the default result. 
# But we can also call such functions by supplying new values of the argument and get non default result.

new.function <- function(a = 3, b = 6){
  result <- a * b
  print(result)
}

# call the function without passing any argument
new.function()

# call the function with passing new values of the argument
new.function(9, 5)


"Lazy evaluation of function"

# Arguments to functions are evaluated lazily, 
# which means so they are evaluated only when needed by the function body.

# create a functin with arguments
new.function <- function(a, b){
  print(a ^ 2)
  print(a)
  print(b)
}

# evaluate the function supplying one of the arguments
# function would not throw error until it need a value of b
new.function(6)

