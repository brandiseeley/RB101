# - split the words into an array
# - iterate through the array
# - capitalize the first letter of each word
# - join the array back into a string

def titleize(words)
  words.split.map {|word| word.capitalize}.join(' ')
end

words = "the flintstones rock"
p titleize(words) == "The Flintstones Rock"
