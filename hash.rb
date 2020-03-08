#!/usr/bin/ruby

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

