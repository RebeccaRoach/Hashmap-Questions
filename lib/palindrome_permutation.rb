# Write a method which takes a string as an argument and returns true
# if the letters could be re-arranged into a palindrome.
# ex:
# palindrome_permutation?("hello") => false
# palindrome_permutation?("carrace") => true # because racecar is a palindrome

# O(n) time complexity, where n is the chars in the string
# O(n) space complexity

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

  return hash.count {|k,v| v.odd?} == 1
end