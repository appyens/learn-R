# defining function without argument
myfunc <- function(name){
 cat("Hi", name) 
}

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

