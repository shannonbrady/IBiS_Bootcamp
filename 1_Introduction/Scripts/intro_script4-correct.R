# Introduction to R script!

#### INTRODUCTION ####
# type your answer below the commented prompt
# make a character vector of disney characters.
# the c() command means "make a vector". Fill the c() with "Cinderella", "Belle", "Dory" -- don't forget the quotes and commas!
characters <- c("Cinderella", "Belle", "Dory")

# notice you now have a vector on your global environment called 'characters'! ---->

# any time you type the word characters, R will now think you are talking about this vector. Try typing it now!
characters

# check the class of your characters vector by typing class(characters)
class(characters)

# make a numeric vector of dates by filling the c() with 1950, 1987, 2003 -- you don't need quotes for numbers!
dates <- c(1950, 1987, 2003)

# check the class of your dates vector
class(dates)

# make a logical vector of princess by filling the c() with TRUE, TRUE, FALSE -- you don't need quotes for Booleans!
princess <- c(TRUE, TRUE, FALSE)

# check the class of your princess vector
class(princess)

# combine characters, dates, and princess to make a new dataframe called disney. String these three vectors together using data.frame()
disney <- data.frame(characters, dates, princess)