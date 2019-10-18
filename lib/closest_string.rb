def closest(arr)
    if arr == ""
        return []
    else
        numbers = arr.split(" ")
        weights = arr.split(" ").map{|x| z = x.split("")
                                        sum(z) }
        sorted_weights = weights.sort
        pairs = find_pairs(sorted_weights)
        p pairs
        p sorted_weights
        indices = find_index(pairs, weights)
        find_orig(indices, weights, numbers) 
    end
end

def sum(arr)
    arr.inject(0){|sum,x| sum + x.to_i }
end

def find_pairs(sorted_arr)
    diffs_and_pairs = []
    sorted_arr.each_with_index{|x, i| diffs_and_pairs.push([(x - sorted_arr[i-1]).abs, [sorted_arr[i - 1], x]])}
    diffs_and_pairs.sort!{ |a, b| a[0] <=> b[0]}
    closest_pairs = diffs_and_pairs.select{|z| z[0] == diffs_and_pairs[0][0]}
   return closest_pairs
end

def find_index(pairs, weights)
    pairs.map! {|x| x[1]}
    indices = []
    pairs.each {|pair|  z = weights.map{|x| x}
                       pair.each_with_index {|x, i| if i == 0
                                         indices << [z.index(x)]
                                         z.delete_at(z.index(x))
                                          else
                                            indices[-1] << z.index(x) + 1
                                          end
                    }
                }
                return indices
end

def find_orig(indices, weights, numbers)
    x = indices.sort{ |a, b| sum(a) <=> sum(b) }
    return [[weights[x[0][0]], x[0][0], numbers[x[0][0]].to_i], [weights[x[0][1]], x[0][1], numbers[x[0][1]].to_i]]
end