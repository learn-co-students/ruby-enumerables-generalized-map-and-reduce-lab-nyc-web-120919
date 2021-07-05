# Your Code Here
def map(array)
  p array
  new_arr = []
  i = 0          #yield keyword executes the block passed into the method. When               it is executed, it can be passed arguments.
  while i < array.length
    new_arr << yield(array[i])
    i += 1
  end
  p new_arr
end

def reduce(array, starting_point = 0)
  counter = 0
  while counter < array.length do
    starting_point = yield(array[counter], starting_point)
    counter += 1
  end
  if !starting_point
    return false
  else
    starting_point
  end
end