#install.packages("janitor")
library(janitor)
library(readxl)
file <- read_excel(file.choose())

#change column names to the same standard
  #view column names (note: inconsistencies in column names)
colnames(file)
  #clean column names
file = clean_names(file)
  #check column names again (note: names are consistent in style now)
colnames(file)

clean_names()

  
  

#get duplicates 
  #view duplicate in author_name (note: There is 1 actual duplicate)
get_dupes(file, author_name)
  #view duplicate in movie_title 
get_dupes(file, movie_title)
       
