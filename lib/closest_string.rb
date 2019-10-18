def closest(arr)
  numbers = arr.split(" ")
  result = []
  numbers.each_with_index { |x, i| z = x.to_i 
                            result.push([z, i, z])
                          }
  return result
end