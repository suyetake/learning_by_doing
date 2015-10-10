#!/usr/bin/env ruby

# assign strings
practice_string = 'this is a string to practice with'
ppp_string = (practice_string.slice(20, 9) * 3).chop + '!'

# print required lines for this Homework 1 Methods Flow Control story
puts practice_string
puts practice_string.capitalize
puts practice_string.upcase
puts practice_string.sub(/string/, "'string'").capitalize
puts "The string '#{practice_string}' has #{practice_string.length} characters"
puts practice_string.reverse
puts ppp_string

## puts (practice_string.slice(20,9)*3).chop + '!'

## partial_string = practice_string.split('this is a string to ')
## puts partial_string

## puts partial_string.slice(0..1)
## puts partial_string.scan(/(...)/)
## puts partial_string.split(' with')
## puts partial_string.split('with')
## puts partial_string.split(' ')
