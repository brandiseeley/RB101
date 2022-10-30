# ALGORITHM
# # input: hash # # output: different hash
# - Create an empty 'fruits' hash
# - iterate through input hash
# - if the value for the element in hash equals 'Fruit'
#   - add it to the new hash
# - stop when whole hash has been checked
# - return new hash

def select_fruit(hash)
  fruit_collection = {}
  hash.each do |key, value|
    if value == 'Fruit'
    fruit_collection[key] = value
    end
  end
  fruit_collection
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
