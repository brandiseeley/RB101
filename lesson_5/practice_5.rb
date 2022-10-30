# Given this nested Hash figure out the total age 
# of just the male members of the family.

# create a total_male_age variable set to 0
# iterate through the hash
# if the family member is male
#    add that members age to total_male_age
# otherwise
#    next
# return total_male_age

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0

munsters.each_value do |stats|
  if stats['gender'] == 'male'
    total_male_age += stats['age']
  else
    next
  end
end

p total_male_age
