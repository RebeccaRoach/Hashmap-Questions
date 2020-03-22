# find elements that are common to both lists
# concat list 2 onto list1 to make one large array
# try to create keys out of every array element
# if element is already there as a key, it overlaps --> push to result array

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