# Given the following data structure use a combination of methods,
# including either the select or reject method, to return a new 
# array identical in structure to the original but containing only 
# the integers that are multiples of 3.

### ALGORITHM
# - assign an empty array to the return value of the next step
# - use map to iterate through the array
# - use map to iterate through the sub-arrays
# - if the element is divisible by three
#   - return it to the map method
# - otherwise skip to the next element

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |sub_array|
            sub_array.select { |integer| integer % 3 == 0}
          end

p new_arr
