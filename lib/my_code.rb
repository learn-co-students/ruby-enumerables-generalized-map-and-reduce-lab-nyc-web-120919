# Your Code Here
def map(array)
  my_own_map = []
  i = 0 
  while i < array.length
  my_own_map.push(yield(array[i]))
  i += 1
  end
  my_own_map
end 


def reduce(array, sv=nil)
  if sv 
    sum = sv 
    i = 0 
  else 
    sum = array[0]
    i = 1 
  end 
  while i < array.length
    sum = yield(sum, array[i])
    i += 1 
  end 
  sum
end