# Given the following data structure and without modifying
# the original array, use the map method to return a new 
# array identical in structure to the original but where
# the value of each integer is incremented by 1.

original = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_array = original.map do |hash|
              hash.transform_values { |v| v += 1}
            end
          
p original
p new_array

p original.object_id != new_array.object_id
