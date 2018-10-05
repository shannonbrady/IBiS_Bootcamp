# .Rda files can be read by R. If we want to save a dataframe as a csv that is compatible with Excel, we should use write.csv(). Check out the help page for the write.csv() function using ?write.csv(). Then, try to write the humans dataframe as "starwars_humans.csv"

# You might need to use library(utils) to allow access to the functions within the utils package

utils::write.csv()