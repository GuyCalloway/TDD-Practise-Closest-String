def closest(string)
    original_number_array = string.split(" ").map{|x| x.to_i}
    if string == ""
      return []
    else
      weights = weight_and_index_finder(string)
      sorted_weights = weights.sort{|a, b| a[0] <=> b[0]}
      pairs = find_pairs(sorted_weights)
      find_result(pairs, original_number_array) 
    end
  end
  
    def weight_and_index_finder(string)
      numbers = string.split(" ")
      weights_and_index = split_sum_with_index(numbers)
      weights_and_index
    end
    
    def split_sum_with_index(numbers)
      numbers.each_with_index.map  do |x, index| 
        number = x.split("")
        weight = sum(number)
        [weight, index] 
      end
    end
  
    def sum(arr)
      arr.inject(0){|sum,x| sum + x.to_i }
    end
  
    def find_pairs(sorted_by_weight)
      diffs_and_pairs = []
      sorted_by_weight.each_with_index{|x, i| diffs_and_pairs.push([(x[0] - sorted_by_weight[i-1][0]).abs, [sorted_by_weight[i - 1][0], x[0]], [sorted_by_weight[i-1][1], x[1]]])}
      closest_pairs = diffs_and_pairs.sort!{ |a, b| a[0]<=> b[0]}.select{|z| z[0] == diffs_and_pairs[0][0]}
      return closest_pairs
    end
    
    def find_result(array_with_pair_and_indices, original_number_array)
      parent = array_with_pair_and_indices[0]
      weight1 = parent[1][0]
      weight2 = parent[1][1]
      index1 = parent[2][0]
      index2 = parent[2][1]
      return [[weight1, index1, original_number_array[index1]], [weight2, index2, original_number_array[index2]]]
    end