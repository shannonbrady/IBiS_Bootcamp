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

# View your new dataframe in a familiar format
View(disney)

# look at the structure of the dataframe
str(disney)

# check out a single column using the $ function. Try typing disney$characters now
disney$characters

# change the characters column to be a character, not a factor
disney$characters <- as.character(disney$characters)

# how many rows does the dataframe have?
nrow(disney)

# how many columns does the dataframe have?
ncol(disney)

# Each cell of your data frame has a row number and a column number. You can identify a well using square brackets i.e. disney[row_number,column_number]. Try looking at the whole first row of your dataframe by specifying row 1 and not specifying a column number.
disney[1,]

# Try looking at the whole first column of your dataframe.
disney[,1]

# Try looking at the first cell of your data frame (row 1, column 1)
disney[1,1]

#### LOGIC ####

# which elements of characters (if any) are equal to "Cinderella"?
characters == "Cinderella"

# what elements of characters are not equal to "Cinderella"?
characters != "Cinderella"

# is "Cinderella" in the characters vector?
"Cinderella" %in% characters

# Are there movies older than 1995?
dates < 1995

# IF/ELSE statements - print "Hello, Cinderella" if character is Cinderella, otherwise print "You're not Cinderella"
ifelse(characters == "Cinderella", "Hello, Cinderella", "You're not Cinderella")

if(characters == "Cinderella") {
  print("Hello, Cinderella")
}

# ON YOUR OWN (OYO) - use if/else to print "Before me!" or "After me!" for each movie based on if it came out before or after you were born
ifelse(dates < 1993, "Before me!", "After me!")

# For loops - introduction
for(i in 1:10) {
  print(i)
}

# For loops - print each character
for(row in 1:nrow(disney)) {
  print(disney$character[row])
}

# For loops - more advanced
# print each character IF they are a princess ELSE print "Not a princess."
for(row in 1:nrow(disney)) {
  ifelse(disney$princess[row] == TRUE, print(disney$characters[row]), print("Not a princess."))
}

#### PACKAGES ####

# install dplyr, tidyr, and ggplot2
install.packages(c("dplyr", "tidyr", "ggplot2"))