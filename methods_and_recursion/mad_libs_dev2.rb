#!/usr/bin/env ruby

# Methods and Recursion 
# Homework #1
# Pivotal Story 105170392

# Welcoming statements - must hold off for cucumber tests
# #puts 'Welcome to MadLibs'
# #puts
# #puts 'We are going to make a story with your words.'
# #puts

def field_assignment(field_name)
  puts
  puts field_name
  gets.chomp.to_s
end

adj_field_name = 'Please give me an adjective: ==> '
noun_field_name = 'Please give me a noun: ==> '
verb_field_name = 'Please give me a verb: ==> '
finished_yet = FALSE
index = 0
count = 0
madlib_field = []
madlib_field = ["these","will","get","overwritten"]

# printing an unassigned element does nothing and gens no errors:
puts madlib_field[6]

num_of_adj = 3
while !finished_yet
  madlib_field[index] = field_assignment(adj_field_name)
  index += 1
  count += 1
  finished_yet = (count == num_of_adj)
end

# debugging statements produced as expected:
puts madlib_field[0]
puts madlib_field[1]
puts madlib_field[2]
puts madlib_field[3]
puts
puts 'give me an error for fun: ==> '
madlib_field[index] = gets.chomp.to_s
index += 1
puts 
puts 'give me an adjective: ==> '
madlib_field[index] = gets.chomp.to_s
index += 1
puts
puts "here is the array: " + madlib_field.to_s
puts "here is an array within a string: #{madlib_field.to_s}"
puts "here is an element within a string: #{madlib_field[0].to_s}"



