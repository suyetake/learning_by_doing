#!/usr/bin/env ruby

# Numbers, Letters, and Variables slide deck
# Homework #3

# Header info for output: won't place due to
# expectations of Travis cucumber tests).
# #puts " Numbers, Letters, and Variables slide deck"
# #puts " Homework #3"
# #puts " ==========='
# #puts

# assign and initialize some descriptive vars
seconds_in_minute = 60
minutes_in_hour = 60
hours_in_day = 24
days_in_week = 7
weeks_in_year = 52

# use variables in the string outputs
puts "There are #{seconds_in_minute} seconds in a minute"
puts "There are #{minutes_in_hour} minutes in an hour"
puts "There are #{hours_in_day} hours in a day"
puts "There are #{days_in_week} days in a week"

# calculate magnitude of seconds in one hour/day/week values
puts 'That means there are:'
puts "  #{seconds_in_hour = \
  seconds_in_minute * minutes_in_hour} seconds in an hour,"
puts "  #{seconds_in_day = \
  seconds_in_hour * hours_in_day} seconds in a day,"
puts "  #{seconds_in_week = \
  seconds_in_day * days_in_week} seconds in a week"

# calculate seconds in a year leveraging above calcs
seconds_in_year = seconds_in_week * weeks_in_year

# calculate seconds in a 20-year-old person
# later could get age from command prompt
# #age_in_years = gets.chomp

age_in_years = 20
seconds_in_this_person = age_in_years * seconds_in_year
puts "That means when you turn #{age_in_years}, you've been alive\
 for #{seconds_in_this_person} seconds,"

# calculate seconds in a 100-year-old person
age_in_years = 100
seconds_in_this_person = age_in_years * seconds_in_year
puts "and if you make it to #{age_in_years}, you will have lived \
#{seconds_in_this_person} seconds. Make them count!"
