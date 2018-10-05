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


# Use if/else to print "Before then!" or "After then!" for each movie based on if it came out before or after the year 1994
ifelse()