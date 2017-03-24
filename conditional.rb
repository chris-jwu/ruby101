#!/usr/bin/ruby

number = 10

# if, elsif, else
if number < 0
  puts ' number < 0'
elsif number < 5 and false
  puts '0 <= number <5'
else
  puts 'number >=5'
end

puts 'one line if' if true

# unless
unless number == 10
  puts 'number does not equal 100'
else
  puts 'number equals 100'
end

puts 'this does not print' unless true
puts 'this will print' unless false

# case object
age = 18
case age
when 0..2
  puts 'baby'
when 3..5
  puts 'little kid'
when 6..16
  puts 'kid'
when 16..30
  puts 'young man'
else
  puts 'old man'
end
