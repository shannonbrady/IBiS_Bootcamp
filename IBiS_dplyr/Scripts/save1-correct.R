
# Filter out only certain rows in the dataset.

# dplyr::filter() tells R that we want to look into the dplyr package for the function filter()
# The filter function takes two arguments: dataframe, logic
#
# Use dplyr::filter() to filter through the starwars data frame and keep all the humans.
# We will save this subset of the data as a new dataframe called humans
humans <- dplyr::filter(starwars, species == "human")

# Now that you have the humans data frame, save it as a .Rda file to your Downloads folder.

# If you want, you can set your working directory to wherever you want using setwd(). Or, you can just plug in your desired filename and extension and the file will save in your current working directory.

save(humans, file = "starwars_humans.Rda")