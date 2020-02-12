$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  size_data = nds.size 
  counter2 = 0 
  while counter2 < size_data do
    sum = 0 
    counter3 = 0
    size_director = nds[counter2][:movies].size 
    while counter3 < size_director do 
      sum = sum + nds[counter2][:movies][counter3][:worldwide_gross]
      counter3 += 1 
    end
    result[nds[counter2][:name]] = sum
    counter2 += 1 
  end
  result
end
