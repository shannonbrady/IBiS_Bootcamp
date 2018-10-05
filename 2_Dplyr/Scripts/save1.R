
# Filter out only certain rows in the dataset.

# dplyr::filter() tells R that we want to look into the dplyr package for the function filter()
# The filter function takes two arguments: dataframe, logic
#
# Use dplyr::filter() to filter through the starwars data frame and keep all the humans.
# We will save this subset of the data as a new dataframe called humans
humans <- dplyr::filter(starwars, species == "human")

# Now that you have the humans data frame, save it as a .Rda file to your Downloads folder.

# Since you are already in the working directory where you want this dataframe to be saved (your Downloads folder), you can just plug in your desired filename and extension.

save(humans, file = "starwars_humans.Rda")