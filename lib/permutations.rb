# Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.
# return true if both empty
# return false if strings are not same length
# make every letter a key in a new hash with value set to 1
# if duplicate letters, increment count
# loop through second string to check if every letter (and only those letters) is included as a key in string 1 hash
# check to make sure the count of every key letter is the same
# return false if not


 # %i[a b c d].all? {|s| hash.key? s}

def permutations?(string1, string2)
  return true if string1 == "" && string2 == ""
  return false if string1.length != string2.length

  array_1 = string1.split("")
  array_2 = string2.split("")

  hash_1 = {}
  array_1.each do |letter|
    if hash_1[letter].nil?
      hash_1[letter] = 1
    else
      hash_1[letter] += 1
    end
  end

  hash_2 = {}
  array_2.each do |letter|
    if hash_2[letter].nil?
      hash_2[letter] = 1
    else
      hash_2[letter] += 1
    end
  end

  hash_1.each do |key, value|
    if hash_2[key] == value
      return hash_1.keys.all? {|k| hash_2.key? k}
    end
  end

  return false
end