
require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  # result = {}
  # nil
   
 



# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  row_index = 0 
  while row_index < director_data.length do
    movie_index = 0 
    while movie_index < director_data[row_index] do
    directors_totals += gross_for_director(director_data, row_index, movie_index)
    movie_index += 1
  end 
 row_index += 1   
end
directors_totals
end
