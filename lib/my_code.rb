# Your Code Here
def map(source_array)
new_array = []
index = 0 
while index < source_array.length
new_array << yield(source_array[index])
index += 1 
end
new_array
end 

def reduce(source_array, starting_value = nil)
  if starting_value
    total = starting_value
    index = 0 
  else 
    total = source_array[0]
    index = 1 
  end 
  while index < source_array.length 
    total = yield(total, source_array[index])
    index += 1 
  end 
  total
end 