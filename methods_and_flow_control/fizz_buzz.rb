#!/usr/bin/env ruby

# output integers 1 through 100:
# replacing FizzBuzz for numbers divisible by 3 and 5
# replacing Fizz for numbers divisible by 3 only
# replacing Buzz for numbers divisible by 5 only

# initialize current_number
current_number = 0

# loop current_number through 100
while current_number <= 99
  current_number += 1
  if current_number % 3 == 0 && current_number % 5 == 0
    puts 'FizzBuzz'
  elsif current_number % 3 == 0
    puts 'Fizz'
  elsif current_number % 5 == 0
    puts 'Buzz'
  else
    puts current_number
  end
end
