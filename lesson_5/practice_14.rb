# Given this data structure write some code to return an array 
# containing the colors of the fruits and the sizes of the 
# vegetables. The sizes should be uppercase and the colors 
# should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

### PROBLEM
# - create an empty size_and_color array
# - iterate over each hash value in hsh
# - if the :type is 'fruit'
#   - add the value from :colors to size_and_color array, Capitalized
# - if the :type is 'vegetable'
#   - add the value from :size to size_and_color array, UPERCASED
# - return size_and_color

def size_and_color(hsh)
  hsh.map do |_, details|
    if details[:type] == 'fruit'
      details[:colors].map {|color| color.capitalize }
    else
      details[:size].upcase!
    end
  end
end

p size_and_color(hsh)
