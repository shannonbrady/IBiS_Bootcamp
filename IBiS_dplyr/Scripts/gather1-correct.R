# For plotting, we often want to change our data between long format and wide format. You can convert between the two with spread and gather. 

# Let's look at what long format would be:

dark <- starwars %>% 
  dplyr::filter(hair_color %in% c("black","brown")) %>% 
  dplyr::select(name, height, mass, species) %>% 
  dplyr::filter(!is.na(height)) %>%
  dplyr::filter(!is.na(mass))

# If we gather the height, mass, and species data into one column and their values into another column, we can get this data into long format

long <- dark %>%
  tidyr::gather(variable, value, height:species)

#We can switch back to wide format using the spread function

wide <- long %>%
  tidyr::spread(variable, value)
