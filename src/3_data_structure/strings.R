# Any value written within a pair of single quote or double quotes in R is treated as a string. 
# Internally R stores every string within double quotes, even when you create them with single quote.

"Rules Applied in String Construction

1. The quotes at the beginning and end of a string should be both double quotes or both single quote. They can not be mixed.
2. Double quotes can be inserted into a string starting and ending with single quote.
3. Single quote can be inserted into a string starting and ending with double quotes.
4. Double quotes can not be inserted into a string starting and ending with double quotes.
5. Single quote can not be inserted into a string starting and ending with single quote."

# examples of valid strings

a <- 'Start and end with single quote'
print(a)
b <- "Start and end with double quotes"
print(b)
c <- "single quote ' in between double quotes"
print(c)
d <- 'double quotes " in between single quotes'
print(d)


# examples of invalid strings

# e <- 'Mixed quotes" 
# print(e)
# f <- 'Single quote ' inside single quote'
# print(f)
# g <- "Double quotes " inside double quotes"
# print(g)

"String manipulation"

"concatenating strings - paste() function"
# syantax:
paste(..., sep = " ", collapse = NULL)

# 1. ... represents any number of arguments to be combined.
# 2. sep represents any separator between the arguments. It is optional.
# 3. collapse is used to eliminate the space in between two strings. But not the space within two words of one string.

a <- "Hello"
b <- 'How'
c <- "are you?"

print(paste(a, b, c))
print(paste(a, b, c, sep = "-"))
print(paste(a, b, c, sep = "", collapse = ""))

"Formating numbers and strings - format() function"
# Numbers and strings can be formatted to a specific style using format() function
# syntax:
format(x, digits, nsmall, scientific, width, justify = c("left", "right", "centre", "none")) 

# 1. x is the vector input.
# 2. digits is the total number of digits displayed.
# 3. nsmall is the minimum number of digits to the right of the decimal point.
# 4. scientific is set to TRUE to display scientific notation.
# 5. width indicates the minimum width to be displayed by padding blanks in the beginning.
# 6. justify is the display of the string to left, right or center.

# example

# Total number of digits displayed, last digit rounded off
result <- format(23.123456789, digits = 9)
print(result)

# Display numbers in scietific notation
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# the minimum number of digits to the right of the decimal point
result <- format(23.47, nsmall = 5)
print(result)

# format treats everything as a string
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width
result <- format(13.7, width = 6)
print(result)

# left justify strings
result <-  format("hello", width = 8, justify = "l")
print(result)

# Justify string with center
result <- format("Hello", width = 8, justify = "c")
print(result)

"Counting number of characters in a string - nchar() function"

# syntax:
nchar(x)
# where x is the vector input

result <- nchar("Count the numbers of characters")
print(result)

"Changing the case - toupper() & tolower() functions"
# syntax:
toupper(x)
tolower(x)

# where x is the vector input

res1 <- toupper("changing to upper")
res2 <- tolower("changing to lower")
cat(res1, res2)

"Extracting parts of a string - substring() function"
# the function extracts parts of a string
# syntax:
substring(X, first, last)

# where
# 1. x is the character vector input.
# 2. first is the position of the first character to be extracted.
# 3. last is the position of the last character to be extracted.

# extract characters from 5 to 7 position
res <- substring("Extract", 5, 7)
print(res)