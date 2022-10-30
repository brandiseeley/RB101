# Change code to mutate original 'numbers' array

def multiply_numbers!(numbers, multiplier)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= multiplier

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply_numbers!(my_numbers, 2) # => [2, 8, 6, 14, 4, 12]

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply_numbers!(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
