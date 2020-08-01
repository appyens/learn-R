# Infix operator

# Most of the operators that we use in R are binary operators (having two operands). Hence, they are infix operators, used between the operands. Actually, these operators do a function call in the background.
# For example, the expression a+b is actually calling the function `+`() with the arguments a and b, as `+`(a, b).
# Note: the back tick (`), this is important as the function name contains special symbols.
# Following are some example expressions along with the actual functions that get called in the background.

5 + 3
# infix form
`+`(5, 3)

5 - 3
# infix form
`-`(5, 3)

5 * 3 - 1
# infix form
`-`(`*`(5, 3), 1)

# It is possible to create user-defined infix operators in R. This is done by naming a function that starts and ends with %.
# Following is an example of user-defined infix operator to see if a number is exactly divisible by another.

`%divisible%` <- function(x, y){
  if (x %% y == 0){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
}

10 %divisible% 3
10 %divisible% 2
`%divisible%`(10, 5)

# Things to remember while defining your own infix operators are that they must start and end with %. Surround it with back tick (`) in the function definition and escape any special symbols.

# Predifined infix operators in R

#   %%    Remainder operator
#   %/%   Integer division
#   %*%   Matrix multiplication
#   %o%   outer product
#   %x%   kronecker product
#   %in%  Matching operator
