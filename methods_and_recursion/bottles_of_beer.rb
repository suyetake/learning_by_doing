#!/usr/bin/env ruby

# Bottles of Beer Song and output
# print each verse separated by a blank line

# method to print 98 verses
def print_next_verse(number_of_bottles)
  next_number_of_bottles = number_of_bottles - 1

  puts "#{number_of_bottles} bottles of beer \
on the wall, #{number_of_bottles} bottles of beer."

  puts "Take one down and pass it around, \
#{next_number_of_bottles} bottles of beer on the wall."

  puts ''
end

# method to print 2nd last verse
def print_near_last_verse(number_of_bottles)
  next_number_of_bottles = number_of_bottles - 1

  puts "#{number_of_bottles} bottles of beer \
on the wall, #{number_of_bottles} bottles of beer."

  puts "Take one down and pass it around, \
#{next_number_of_bottles} bottle of beer on the wall."

  puts ''
end

# method to print last verse
def print_almost_last_verse(number_of_bottles)
  next_number_of_bottles = number_of_bottles - 1

  puts "#{number_of_bottles} bottle of beer \
on the wall, #{number_of_bottles} bottle of beer."

  puts "Take one down and pass it around, \
#{next_number_of_bottles} bottles of beer on the wall."

  puts ''
end

# assign initial bottle_count and shopping_list_count
bottle_count = 99
shopping_list_count = bottle_count

puts 'Bottles of Beer Song'
puts ''

# count down no less than two bottles of beer
while bottle_count >= 3
  print_next_verse(bottle_count)
  bottle_count -= 1
end

print_near_last_verse(bottle_count)

bottle_count -= 1
print_almost_last_verse(bottle_count)

# cucumber test required this last line
puts "No more bottles of beer on the wall, \
no more bottles of beer."
puts "Go to the store and buy some more, \
#{shopping_list_count} bottles of beer on the wall."
