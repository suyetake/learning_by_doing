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

field_name = 'Please give me an adjective: ==> '

finished_yet = FALSE
index = 0
madlib_field = []
madlib_field = ["these","will","get","overwritten"]

while !finished_yet
  madlib_field[index] = field_assignment(field_name)
  index += 1
  finished_yet = TRUE
end

puts madlib_field[0]
puts
puts 'give me an adjective: ==> '
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



