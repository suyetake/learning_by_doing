#!/usr/bin/env ruby

# create an array to work with
# that has integers 1-10
play_array = (1..10).to_a

# create the requisite output lines in PV#105170810
puts play_array.join('...') + '...'

blastoff_string = 'T-' + play_array.reverse.join(', ') + '...  BLASTOFF!'
puts blastoff_string

puts "The last element is #{play_array.last}"
puts "The first element is #{play_array.first}"
puts "The third element is #{play_array[2]}"
puts "The element with an index of 3 is #{play_array[3]}"
puts "The second from last element is #{play_array[-2]}"
puts "The first four elements are '#{play_array.first(4).join(', ')}'"

print 'If we delete 5, 6 and 7 from the array, '
play_array.delete(5)
play_array.delete(6)
play_array.delete(7)
puts "we're left with [#{play_array.join(',')}]"

print 'If we add 5 at the beginning of the array, '
play_array.unshift(5)
puts "we're left with [#{play_array.join(',')}]"

print 'If we add 6 at the end of the array, '
play_array.push(6)
puts "we're left with [#{play_array.join(',')}]"

print "Only the elements #{play_array.select { |num| num > 8 }} "
puts 'are > 8.'

print 'If we remove all the elements, then the length '
play_array.clear
puts "of the array is #{play_array.length}"
