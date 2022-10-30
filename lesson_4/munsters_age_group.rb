# Modify the hash such that each member of the Munster family has an 
# additional "age_group" key that has one of three values describing
# the age group the family member is in (kid, adult, or senior).
# Your solution should produce the hash below


# - create age ranges for kid, adult, and senior groups
# - iterate through munsters
# - for each member
# - check the age
# - if the age is in the kids range
#   - add age_group => kid to their hash
# - if the age is in the adult range
#   - add age_group => adult to their hash
# - if the age is in the senior range
#   - add age_group => senior to their hash
KID_AGE = (0..17)
ADULT_AGE = (18..64)

def add_age_group(family)
  family.each do |name, stats|
    case stats['age']
    when KID_AGE
      stats['age_group'] = 'kid'
    when ADULT_AGE
      stats['age_group'] = 'adult'
    else
      stats['age_group'] = 'senior'
    end
  end
end



munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# check against given expected output
p add_age_group(munsters) == { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
"Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
"Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
"Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
"Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

