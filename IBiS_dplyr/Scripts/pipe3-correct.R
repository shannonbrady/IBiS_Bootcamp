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

selected <- dplyr::select(dark, name, height, mass, species)

# The %>% function is called a "pipe". This is a dplyr function that lets you run multiple steps in a row without saving the intermediate data frames.
# Use the %>% function to perform the dark hair filter and column select functions you performed above.
# The great thing about this function is you do not need to specify a dataframe within subsequent functions if you define it in the first line of the pipe.
# I've started the structure for you. Try it out:

dark <- starwars %>% #take the starwars data frame, and then
  dplyr::filter(hair_color %in% c("black","brown")) %>% #filter cases where hair color is black or brown, and then
  dplyr::select(name, height, mass, species) %>% #select the name, height, mass, and species columns, and then
  dplyr::filter(!is.na(height)) %>%#remove NAs in the height column, and then
  dplyr::filter(!is.na(mass)) %>% #remove NAs in the mass column, and then
  dplyr::group_by(species) %>% #group the data by species, and then
  dplyr::summarize(average_height = mean(height)) #summarize the data where average_height is the mean of heights (within a species).

