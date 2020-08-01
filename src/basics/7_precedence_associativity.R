# precedence and associativity
# When multiple operators are used in a single expression, we need to know the precedence of these operators to figure out the sequence of operation that will take place.
# Precedence defines the order of execution, i.e., which operator gets the higher priority.

2 + 6 * 5 # 32

# Here, the * operator gets higher priority than + and hence 2 + 6 * 5 is interpreted as 2 + (6 * 5). This order can be changed with the use of parentheses ().

(2 + 6) * 5 # 40

# It is possible to have multiple operators of same precedence in an expression. In such case the order of execution is determined through associativity.
# The associativity of operators is given in the table above.
# We can see that most of them have left to right associativity.

3 / 4 / 5  # 0.15

# In the above example, 3 / 4 / 5 is evaluated as (3 / 4) / 5 due to left to right associativity of the / operator. However, this order too can be changed using parentheses ().

3 / (4 / 5) # 3.75




