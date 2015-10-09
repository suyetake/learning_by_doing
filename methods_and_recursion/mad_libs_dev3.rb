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
#  puts field_name
  print field_name
  gets.chomp.to_s
end

madlib_adj_field = []
madlib_adj_field = ["these","will","get","overwritten"]
madlib_noun_field = []
madlib_noun_field = ["these","will","get","overwritten"]
madlib_verb_field = []
madlib_verb_field = ["these","will","get","overwritten"]

adj_field_name = 'Please give me an adjective: ==> '
noun_field_name = 'Please give me a noun: ==> '
verb_field_name = 'Please give me a verb: ==> '

finished_yet = FALSE
index = 0
count = 0

# get all the adjectives needed
num_of_adj = 3
while !finished_yet
  madlib_adj_field[index] = field_assignment(adj_field_name)
  index += 1
  count += 1
  finished_yet = (count == num_of_adj)
end
finished_yet = FALSE
index = 0
count = 0

# get all the nouns needed
num_of_noun = 2
while !finished_yet
  madlib_noun_field[index] = field_assignment(noun_field_name)
  index += 1
  count += 1
  finished_yet = (count == num_of_noun)
end
finished_yet = FALSE
index = 0
count = 0

# get all the verbs needed
num_of_verb = 1
while !finished_yet
  madlib_verb_field[index] = field_assignment(verb_field_name)
  index += 1
  count += 1
  finished_yet = (count == num_of_verb)
end

# next loops for output can go here
# #finished_yet = FALSE
# #index = 0
# #count = 0

# debugging statements produce as expected:
puts madlib_adj_field[0]
puts madlib_adj_field[1]
puts madlib_adj_field[2]
puts madlib_adj_field[3]
puts
puts madlib_noun_field[0]
puts madlib_noun_field[1]
puts madlib_noun_field[2]
puts madlib_noun_field[3]
puts
puts madlib_verb_field[0]
puts madlib_verb_field[1]
puts madlib_verb_field[2]
puts madlib_verb_field[3]

# code models for embedding arrays in string outputs
puts
puts "here is the adj array: " + madlib_adj_field.to_s
puts "here is the noun array within a string: #{madlib_noun_field.to_s}"
puts "here is a verb element within a string: #{madlib_verb_field[0].to_s}"



