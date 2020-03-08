#!/usr/bin/ruby -w

# range operator

print "#{(1..5).to_a}" + "\n"
print "#{(1...5).to_a}" + "\n"
print "#{('a'..'d').to_a}" + "\n"
print "#{('a'...'d').to_a}" + "\n"
print "#{('aaa'..'aac').to_a}" + "\n"


digits = 0..9
puts digits.include?(0)
puts digits.min
puts digits.max
puts digits.size
puts digits.count

ret = digits.reject {|i| i < 5 } # returns the elements that does not meet the condition
puts "Rejected values are #{ret}"

# range as condition
score =70
result = case score
when 0..60 then  'Fail'
when 60..100 then  'Pass'
else  'minus score'
end

puts result

# range as interval
puts (1..10) === 5  # true
puts (1..10) == 5 # false
puts ('a'..'z') === 'b'  # true
