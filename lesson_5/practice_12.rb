# Given the following data structure, and without using the 
# Array#to_h method, write some code that will return a 
# hash where the key is the first item in each sub array
# and the value is the second item.

arr = [[:a, 1], 
       ['b', 'two'], 
       ['sea', {c: 3}], 
       [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

### ALGORITHM
# - assign an empty hash to new_hash
# - iterate through arr
# - get the element at index 0, say a
# - and the element at index 1, say b
# - add them to new_hash using new_hash[a] = b

new_hash = {}
arr.each do |sub_array|
  new_hash[sub_array[0]] = sub_array[1]
end

p new_hash == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
