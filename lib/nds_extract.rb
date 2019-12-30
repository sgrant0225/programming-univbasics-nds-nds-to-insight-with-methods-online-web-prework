
require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  # result = {}
  # nil
   pp nds
directors_totals = {} 
 row_index = 0 
 while row_index < nds.length do
  directors_name = nds[row_index][:name] 
  directors_totals[directors_name] = 0 
  movie_index = 0
  while movie_index < nds[row_index][:movies].length do
  directors_totals[directors_name] += nds[row_index][:movies][movie_index][:worldwide_gross]
  movie_index += 1
  end
  row_index += 1
end
directors_totals
end



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
