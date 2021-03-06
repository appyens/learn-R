# Repeat Loop
# syntax
repeat {
  # commands
  if (condition) {
    break
  }
}

# example
v = c('Hello', 'loop')
cnt = 1
repeat {
  print(v)
  cnt = cnt + 1
  if (cnt > 5) {
    break()
  }
}


# while
# syntax
while (condition) {
  # statement
}

# example
flag <- TRUE
counter = 10
while (flag) {
  print('Flag is true')
  counter = counter + 1
  print(counter)
  if (counter == 100){
    break()
  }
}

# example
while (counter < 20) {
  print('flag is true')
  counter = counter + 1
}


# for loop
# syantax:
for (value in vector){
  # statements  
}

# example
v <- LETTERS
for (i in v){
  print(i)
}


# loop control statements
"break"
# Loop control statements change execution from its normal sequence. 

v <- LETTERS
for (i in v){
  print(i)
  if (i == "D"){
    break()
  }
}


"next"
# The next statement in R programming language is useful when we want to skip the current iteration of a loop without terminating it. 
# On encountering next, the R parser skips further evaluation and starts next iteration of the loop

for (i in 1:10){
  if (i == 3 | i == 6) {
    next
  }
  print(i)
}
    