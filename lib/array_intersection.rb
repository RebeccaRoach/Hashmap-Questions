# find elements that are common to both array lists

# O(n) time and space complexities

def intersection(list1, list2)
  
  array = list1.concat(list2)
  hash = {}
  result = []

  array.each do |item|
    if hash[item].nil?
      hash[item] = true
    else
      result << item
    end
  end

  return result
end


# Equivalently, could make a Ruby set:
# def intersection(list1, list2)
#   set = list1.to_set & list2
#   result = set.to_a
#   return result
# end