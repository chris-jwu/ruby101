#!/usr/bin/ruby -w

ary = [1,2,3,4,5]
ary.each do |i|
  print "#{i} "
end

puts

# You normally use the collect method when you want to do something with each of the values to get the new array
a = [1,2,3,4,5]
b = Array.new
b = a.collect{ |e| e*10 }
print b
