#!/usr/bin/env ruby

# create an array to work with
# that has integers 1-10
play_array = (1..10).to_a
# puts play_array
# puts play_array.class
print play_array
puts ''

# create the requisite output lines in PV#105170810
puts play_array.join('...') + '...'

# working, but tricky to chop the last comma:
# print 'T-'
# play_array.reverse_each {|x| print x, ', '}
# print '... BLASTOFF!'

# working, but better practice to place in string
# print 'T-' + play_array.reverse.join(', ') + '... BLASTOFF!'

blastoff_string = 'T-' + play_array.reverse.join(', ') + '... BLASTOFF!'
puts blastoff_string
