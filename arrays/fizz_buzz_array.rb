#!/usr/bin/env ruby

# Implement Fizz Buzz into an array in fizz_buzz_array.rb

# output integers 1 through 100:
# replacing FizzBuzz for numbers divisible by 3 and 5
# replacing Fizz for numbers divisible by 3 only
# replacing Buzz for numbers divisible by 5 only

# instead of an iterator, use an array 1-100
numbers = (1..100).to_a
value = 101

# place output to an array
output = []

# loop through 100
# while numbers != nil do
# while !numbers.index.nil?
while value > 1
  value = numbers.pop
  if value % 3 == 0 && value % 5 == 0
    output.push('FizzBuzz')
  elsif value % 3 == 0
    output.push('Fizz')
  elsif value % 5 == 0
    output.push('Buzz')
  else
    output.push(value)
  end
end

puts output.reverse

### Accepted fizz_buzz.rb Solution ###

# initialize current_number
# current_number = 0
#
# # loop current_number through 100
# while current_number <= 99
#   current_number += 1
#   if current_number % 3 == 0 && current_number % 5 == 0
#     puts 'FizzBuzz'
#   elsif current_number % 3 == 0
#     puts 'Fizz'
#   elsif current_number % 5 == 0
#     puts 'Buzz'
#   else
#     puts current_number
#   end
# end
