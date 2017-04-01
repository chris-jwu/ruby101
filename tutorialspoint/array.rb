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

# initialization
names = Array.new(20)

# size or length returns the same
puts names.length
puts names.size

# assign value to each array elements
names = Array.new(3, 'person')
puts "#{names}"

# use a block to assign value to array elements
names = Array.new(5) { |x| x*2}
puts "#{names}"

nums = Array.[](1, 2, 3, 4,5)
puts "#{nums}"

nums = Array[1, 2, 3, 4, 5]
puts "#{nums}"
puts nums.at(3)


nums = Array(1..20)
puts "#{nums}"

print Array[1, 2, 3, 4, 5].drop(3), "\n"

print Array[1, 2, 3, 4, 5].take(3), "\n"

print Array[1, 2, 3, 4, 5].push('x'), "\n"
print Array[1, 2, 3, 4, 5].insert(1, 'x', 'y'), "\n"

print Array[1, 2, 3, 4, 5].pop, "\n"

arry = Array['x', 2, 3, 4, 5]
arry.delete('x')
print arry, "\n"

arry = Array[1, 2, 3, 4, 5]
arry.delete_at(1)
print arry, "\n"


#zip
a = [1,2,3]
b = ['x', 'y', 'z']
c = ['a' , 'b', 'c']
print a.zip(b).zip(c) , "\n" # => [[[1, "x"], "a"], [[2, "y"], "b"], [[3, "z"], "c"]]
print a.zip(b,c) , "\n" # => [[1, "x", "a"], [2, "y", "b"], [3, "z", "c"]]
print [1,2].zip(['a']) , "\n" #> [[1, "a"], [2, nil]]

a.zip(b,c).each do |x, y, z|
  print x, y, z, "\n"
end

# prints
# 1xa
# 2yb
# 3zc
