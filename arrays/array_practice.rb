#!/usr/bin/env ruby

# create an array to work with
# that has integers 1-10
play_array = (1..10).to_a

# my observations while coding this:
# puts play_array
# puts play_array.class
# print play_array
# puts ''

# Learnings:

# FEEDBACK:
# dup_array = orig_array.dup
# surprised when later changes to dup_array affected orig_array
# dup_array = orig_array
# so this was the better way to duplicate arrays
# dup_array = orig_array.take(10)

# working, but tricky to chop the last comma:
# print 'T-'
# play_array.reverse_each {|x| print x, ', '}
# print '... BLASTOFF!'

# working, but better practice to place in string
# print 'T-' + play_array.reverse.join(', ') + '... BLASTOFF!'

# calculate stuff needed for the output lines
blastoff_string = 'T-' + play_array.reverse.join(', ') + '...  BLASTOFF!'
# blastoff_string2 = 'T-' + play_array.reverse.join(', ') + '...  BLASTOFF!'
# blastoff_string3 = 'T-' + play_array.reverse.join(', ') + '... BLASTOFF!'

index = 3
# first_four = play_array[0..3].join(', ')
first_four = play_array.first(4)

# shortened_array = play_array.take(10)
shortened_array = play_array.dup

shortened_array.delete(5)
shortened_array.delete(6)
shortened_array.delete(7)

rotated_array = shortened_array.take(7)
rotated_array.push(5)
rotated_array.rotate(-1)

# prepend = 5
# postpend = 6

# create the requisite output lines in PV#105170810
puts play_array.join('...') + '...'

puts blastoff_string
# puts blastoff_string2
# puts blastoff_string3

puts "The last element is #{play_array.last}"
puts "The first element is #{play_array.first}"
puts "The third element is #{play_array[2]}"
puts "The element with an index of #{index} is #{play_array[index]}"
puts "The second from last element is #{play_array.fetch(-2)}"
puts "The first four elements are '#{first_four}'"

print 'If we delete 5, 6 and 7 from the array, '
puts "we're left with [#{shortened_array.join(',')}]"

print "If we add 5 at the beginning of the array, "
shortened_array.insert(0, 5)
puts "we're left with [#{shortened_array.join(',')}]"

print "If we add 6 at the end of the array, "
shortened_array.push(6)
puts "we're left with [#{shortened_array.join(',')}]"

print "Only the elements #{play_array.select { |num| num > 8 }} "
puts 'are > 8.'

print 'If we remove all the elements, then the length '
play_array.pop(play_array.length)
puts "of the array is #{play_array.length}"
