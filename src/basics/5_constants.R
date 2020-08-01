# constants
# 
# Constants in R
# Constants, as the name suggests, are entities whose value cannot be altered. Basic types of constant are numeric constants and character constants.

# Numeric Constants

# All numbers fall under this category. They can be of type integer, double or complex.
# It can be checked with the typeof() function.
# Numeric constants followed by L are regarded as integer and those followed by i are regarded as complex.

typeof(5)
typeof(5L)
typeof(5i)

# Numeric constants preceded by 0x or 0X are interpreted as hexadecimal numbers.

0xff
0XF + 1


# character constants
# Character constants can be represented using either single quotes (') or double quotes (") as delimiters.
'example'
"example"
typeof("5")


# Built-in Constants
# Some of the built-in constants defined in R along with their values is shown below.
Letters
LETTERS
pi
month.name
month.abb

# But it is not good to rely on these, as they are implemented as variables whose values can be changed.

pi
pi <- 56
pi


