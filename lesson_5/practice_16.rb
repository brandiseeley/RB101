# Each UUID consists of 32 hexadecimal characters, and is typically broken
# into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# - create a constant array containing section_lengths [8, 4, 4, 4, 12]
# - define uuid with no arguments
#   - create an empty uuid_sections array
#   - iterate through section_lengths
#     - set section = an empty string
#     - n times where n = the current section_lengths integer
#        - take a random char from hexadecimal characters and 
#          add to section
#     - add section to uuid_sections
#   - join uuid_sections with '-'
#   - return uuid

SECTION_LENGTHS = [8, 4, 4, 4, 12]
HEXADECIMAL = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

def uuid
  uuid_sections = []
  SECTION_LENGTHS.each do |number|
    section = ''
    number.times do
      section << HEXADECIMAL.sample
    end
    uuid_sections << section
  end
  uuid_sections.join('-')
end

p uuid
