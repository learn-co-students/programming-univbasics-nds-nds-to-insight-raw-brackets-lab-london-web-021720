$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
  index = 0
  totals = {}
  
  while index < nds.length do
    itterable = 0
    director_total = 0
    
    while itterable < nds[index][:movies].length do
      director_total += nds[index][:movies][itterable][:worldwide_gross]
      
      itterable += 1
    end
    totals[nds[index][:name]] = director_total
    
    index += 1
  end
  
  return totals
end
