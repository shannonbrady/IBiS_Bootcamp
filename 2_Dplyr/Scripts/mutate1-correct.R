# One last dplyr function -- mutate. 

# Use dplyr::mutate to make a new column called 'bmi' that calculates the BMI of each characters

# Hint: BMI = ((mass/height)/height)*10000

fatty <- starwars %>% 
  dplyr::filter(!is.na(height)) %>%
  dplyr::filter(!is.na(mass)) %>%
  dplyr::mutate(bmi = ((mass/height)/height)*10000)
