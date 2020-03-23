# Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.

 #O(n) time and space

def permutations?(string1, string2)
  return true if string1 == "" && string2 == ""
  return false if string1.length != string2.length

  array_1 = string1.split("")
  array_2 = string2.split("")

  hash = {}
  array_1.each do |letter|
    if hash[letter].nil?
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end

  array_2.each do |letter|
    if hash[letter].nil?
      return false
    elsif hash[letter] == 1
      hash.delete(letter)
    else
      hash[letter] -= 1
    end
  end

  return hash.empty?
end