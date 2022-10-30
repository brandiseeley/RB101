# Using the each method, write some code to output all 
# of the vowels from the strings.

hsh = {first: ['the', 'quick'], 
      second: ['brown', 'fox'],
      third: ['jumped'], 
      fourth: ['over', 'the', 'lazy', 'dog']}

# iterate over hash values
# iterate over array elements
# check each char of the string
# if the string is a vowel
#   display to user
# else
#   next

VOWELS = %(a e i o u)

def print_out_vowels(word)
  chars = word.chars
  chars.each do |letter|
    if VOWELS.include?(letter)
      p letter
    end
  end
end


hsh.each do |_, value_array|
  value_array.each do |word|
    print_out_vowels(word)
  end
end
