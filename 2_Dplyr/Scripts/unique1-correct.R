# Check how many unique species exist in the starwars dataframe using unique().

# The unique() function will list all unique occurrences within a vector.
# First, use the unique() function to list all unique occurrences within the species column

unique(starwars$species)

# The length() function counts the number of occurrences of a vector.
# Use length() to check how many occurrences are in your unique() vector above.

length(unique(starwars$species))

#Once you have both steps complete, save the script and type submit()