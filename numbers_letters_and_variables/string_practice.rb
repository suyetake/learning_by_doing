#!/usr/bin/env ruby

# assign string
practice_string = 'this is a string to practice with'

# print required lines for this Homework 1 Methods Flow Control story
puts practice_string
puts practice_string.capitalize
puts practice_string.upcase
puts practice_string.sub(/string/, "'string'").capitalize
## puts "The string '" + practice_string + "' has " + /
##   practice_string.count + " characters."
puts practice_string.reverse
partial_string = practice_string.split('this is a string to ')
puts partial_string

## puts partial_string.slice(0..1)
## puts partial_string.scan(/(...)/)
## puts partial_string.split(' with')
## puts partial_string.split('with')
## puts partial_string.split(' ')
