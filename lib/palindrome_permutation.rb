# Write a method which takes a string as an argument and returns true
# if the letters could be re-arranged into a palindrome.
# ex:
# palindrome_permutation?("hello") => false
# palindrome_permutation?("carrace") => true # because racecar is a palindrome

# return true for empty string
# create hash with letters as keys, set value to one or increment for each occurrence
# if there is a value with an odd number of occurences, return false unless there's only one odd value
# return true

def palindrome_permutation?(string)
  return true if string == ""

  array = string.split("")
  hash = {}

  array.each do |letter|
    if hash[letter].nil?
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end

  odd_vals = []
  hash.each do |key, value|
    if value.odd?
      odd_vals << [value]
    end
  end

  if odd_vals.length > 1
    return false
  else
    return true
  end
end