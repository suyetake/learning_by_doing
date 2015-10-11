#!/usr/bin/env ruby

# Methods and Recursion
# Homework #1
# Pivotal Story 105170392

# Welcoming statements - must hold off for cucumber tests
# #puts ''
# #puts '' 'Welcome to MadLibs'
# #puts ''
# #puts '' 'I am going to make a story with your words.'
# #puts ''
# #puts ''

def ask_for(this_kind_of_word)
  puts ''
  print "Please give me #{this_kind_of_word} ==> "
  gets.chomp.to_s
end

field_1 = ask_for('an adjective')
field_2 = ask_for('another adjective')
field_3 = ask_for('a noun')
field_4 = ask_for('another noun')
field_5 = ask_for('a plural noun')
field_6 = ask_for('a game')
field_7 = ask_for('a plural noun')
field_8 = ask_for('a verb ending in "ing"')
field_9 = ask_for('a verb ending in "ing"')
field_10 = ask_for('a plural noun')
field_11 = ask_for('a verb ending in "ing"')
field_12 = ask_for('a noun')
field_13 = ask_for('a plant')
field_14 = ask_for('a part of the body')
field_15 = ask_for('a place')
field_16 = ask_for('a verb ending in "ing"')
field_17 = ask_for('an adjective')
field_18 = ask_for('a number')
field_19 = ask_for('a plural noun')

puts ''
puts ''
puts 'Here is the story..'
puts ''
puts ''
puts 'MADLIBS VACATIONS'
puts '-----------------'
puts ''
puts "A vacation is when you take a trip to some #{field_1} place"
puts "with your #{field_2} family. Usually you go to some place"
puts "that is near a/an #{field_3} or up on a/an #{field_4}."
puts "A good vacation place is one where you can ride #{field_5}"
puts "or play #{field_6} or go hunting for #{field_7}. I like"
puts "to spend my time #{field_8} or #{field_9}."
puts 'When parents go on a vacation, they spend their time eating'
puts "three #{field_10} a day, and fathers play golf, and mothers"
puts "sit around #{field_11}. Last summer, my little brother"
puts "fell in a/an #{field_12} and got poison #{field_13} all"
puts "over his #{field_14}. My family is going to go to (the)"
puts "#{field_15}, and I will practice #{field_16}. Parents"
puts 'need vacations more than kids because parents are always very'
puts "#{field_17} and because they have to work #{field_18}"
puts "hours every day all year making enough #{field_19} to pay"
puts 'for the vacation.'
