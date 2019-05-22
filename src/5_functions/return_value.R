# syntax:
return(expression)
# the value returned from a function can be any valid object

check <- function(x){
  if (x > 0){
    result <- "positive"
  }
  else if(x < 0){
    result <- "Negative"
  }
  else{
    result <- "zero"
  }
  return(result)
}

check(23)


# Functions without return()
# If there are no explicit returns from a function, the value of the last evaluated expression is returned automatically in R.
# For example, the following is equivalent to the above function.

check <- function(x) {
  if (x > 0) {
    result <- "Positive"
  }
  else if (x < 0) {
    result <- "Negative"
  }
  else {
    result <- "Zero"
  }
  result
}

# 
# We generally use explicit return() functions to return a value immediately from a function.
# If it is not the last statement of the function, it will prematurely end the function bringing the control to the place from which it was called.

check <- function(x) {
  if (x>0) {
    return("Positive")
  }
  else if (x<0) {
    return("Negative")
  }
  else {
    return("Zero")
  }
}

# In the above example, if x > 0, the function immediately returns "Positive" without evaluating rest of the body.
 
# Multiple Returns
# The return() function can return only a single object. If we want to return multiple values in R, we can use a list (or other objects) and return it.
# Following is an example.

multi.return <- function(){
  my.list <- list("color" = "red", "size" = 20, "shape" = "round")
  return(my.list)  
}

a <- multi.return()
a$color
a$size
a$shape

