# If statement
# syantax:
if (boolean_exp){
  # statements
}

c = 30L
if (is.integer(c)) {
  print("x is integer")
}


# if...else

# An if statement can be followed by an optional else statement which executes when the boolean expression is false.
# syntax:
if (condition) {
  # statements
} else {
  # statement
}

x <- c("what","is","truth")

if("Truth" %in% x) {
  print("Truth is found the first time")
} else if ("truth" %in% x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}


# switch

# The following rules apply to a switch statement −

# If the value of expression is not a character string it is coerced to integer.
# You can have any number of case statements within a switch. Each case is followed by the value to be compared to and a colon.
# If the value of the integer is between 1 and nargs()−1 (The max number of arguments)then the corresponding element of case condition is evaluated and the result returned.
# If expression evaluates to a character string then that string is matched (exactly) to the names of the elements.
# If there is more than one match, the first matching element is returned.
# No Default argument is available.
# In the case of no match, if there is a unnamed element of ... its value is returned. (If there is more than one such argument an error is returned.)

# syntax:
switch(expression, case1, case2....)

x <- switch(3, 'first', 'second', 'third', 'fourth')
print(x)