# Your Code Here
def map(arr)
  result = []
  i = 0
  while i < arr.length do
    result.push(yield(arr[i]))
    i += 1
  end
  result
end

def reduce(arr, start = nil)
  if start
    total = start
    i = 0
  else
    total = arr[0]
    i = 1
  end
  while i < arr.length do
    total = yield(total, arr[i])
    i += 1
  end
  total
end
