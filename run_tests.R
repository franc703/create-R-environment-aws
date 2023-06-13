# Check that required packages can be loaded
packages <- c("RCurl", "tidyverse", "devtools")
lapply(packages, require, character.only = TRUE)

# Test functionality of packages (replace this with actual tests)
print(getURL("http://www.example.com"))
print(ggplot2::mpg)
print(devtools::session_info())
