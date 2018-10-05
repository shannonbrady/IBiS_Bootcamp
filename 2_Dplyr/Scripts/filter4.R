# Remember the dplyr::filter() function?

# Use dplyr::filter to make a new variable called bald that keeps only rows that have the value "none" in the hair_color column

bald <- dplyr::filter(starwars, hair_color == "none")

# Use dplyr::filter to make a new variable called dark that keeps rows that have the value "black" or "brown" in the hair_color column
# Start by making a vector of both options of the hair_color values you will keep

keepers <- c("black","brown")

# Then use filter to keep only instances where the hair_color value is found WITHIN the keepers vector (brown or black)
dark <- dplyr::filter(starwars, hair_color %in% keepers)

# Use the dplyr::select() function to keep only the name, height, mass, and species columns from the dark data frame.
# Name this new data frame 'selected'.

selected <- dplyr::select()
