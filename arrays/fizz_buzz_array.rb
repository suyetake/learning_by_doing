#!/usr/bin/env ruby

# Implement Fizz Buzz into an array in fizz_buzz_array.rb

# output integers 1 through 100:
# replacing FizzBuzz for numbers divisible by 3 and 5
# replacing Fizz for numbers divisible by 3 only
# replacing Buzz for numbers divisible by 5 only

# instead of an iterator, use an array 1-100
numbers = (1..100).to_a

# extracted this method and
# eliminated array assignments..
def fizz_buzz_value(value)
  if value % 3 == 0 && value % 5 == 0
    'FizzBuzz'
  elsif value % 3 == 0
    'Fizz'
  elsif value % 5 == 0
    'Buzz'
  else
    value
  end
end

# ..so the array assignment can occur here
numbers.map! { |x| fizz_buzz_value(x) }

# now this array contains the fizzbuzz output
puts numbers
