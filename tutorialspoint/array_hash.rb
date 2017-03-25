#!/usr/bin/ruby -w

# array, the trailing comma is ignored.
arry = ['a', "b", 'c', 1, 2.2, true,]

arry.each do |item|
  puts "#{item} "
end

# hash, the trailing comma is ignored.
capitals = {"China": "Beijing", "Japan": "Tokyo", "USA": "Washington", }
capitals.each do |country, capital|
  puts "#{country}: #{capital}"
end

# hash, the trailing comma is ignored.
ages = {"Chris" => 30, "Jack"=>  55, "Jason"=>  18}
ages.each do |person, age|
  puts "#{person}: #{age}"
end

# range
(1..5).each do |number|
  puts number*number
end
