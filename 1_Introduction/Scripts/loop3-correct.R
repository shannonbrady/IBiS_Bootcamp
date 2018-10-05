# For loops - introduction
for(i in 1:10) {
  print(i)
}

# Print each character name within the disney data frame
#
# In this case, 'row' = a stand-in variable that will start with 1 and go to the number of rows in the
# disney data frame (nrow(disney)).
#
# Between the brackets, have R print() the value in the characters column for each row.
#
# If youre, stuck, try View() to see your data frame and think about which elements you want R to print.
#
# Don't forget disney[1,1] means row 1 column 1.
for(row in 1:nrow(disney)) {
  print(disney$character[row])
}

# For loops - more advanced
#
# print each character IF they are a princess ELSE print "Not a princess."
# 
# remember ifelse() takes a logic, true action, false action.
#
# If you get stuck, first try to print "Princess" or "Not princess" depending on the TRUE/FALSE in the princess column

for(row in 1:nrow(disney)) {
  ifelse(disney[row,3], print(disney[row,1]), print("Not a princess."))
}