# Switch

# The switch() function in R tests an expression against elements of a list. If the value evaluated from the expression matches item from the list, the corresponding value is returned.
# syantx:
switch(expression, list)

# Here, the expression is evaluated and based on this value, the corresponding item in the list is returned.
# If the value evaluated from the expression matches with more than one item of the list, switch() function returns the first matched item.

# If the value evaluated is a number, that item of the list is returned.

# Example: switch() function
switch(2, "red", "green", "blue")
switch(1, "red", "green", "blue")

# In the above example, "red","green","blue" form a three item list.
# The switch() function returns the corresponding item to the numeric value evaluated.
# If the numeric value is out of range (greater than the number of items in the list or smaller than 1), then, NULL is returned.

x <- switch(4, "red", 'green', 'blue')
print(x)

x <- switch(0, 'red', 'green', 'blue')
x

# Example: switch() Function with as String Expression

# The expression used in the switch () function can be a string as well. In this case, the matching named item’s value is returned.

y <- switch("length", "color" = "red", "shape" = "square", "length" = 5)
y

# Similarly, "length" expression matches with the last item of the list. Hence, we are getting 5 as an output.

