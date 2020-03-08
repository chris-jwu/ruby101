#!/usr/bin/ruby -w

a, b = 5, 2

puts a+b
puts a-b
puts a*b
puts a/b
puts a%b
puts a**b #  exponential (power) calculation

puts a>b
puts a<b


# case subsumption operator: "If a described a set, would b be a member of that set?"
(1..5) === 3           # => true
(1..5) === 6           # => false

Integer === 42          # => true
Integer === 'fourtytwo' # => false

/ell/ === 'Hello'     # => true
/ell/ === 'Foobar'    # => false


# Returns 0 if first operand equals second,
# 1 if first operand is greater than the second
# and -1 if first operand is less than the second.
puts a<=>b
puts b<=>a
puts a<=>a

puts 1.eql?(1.0) # => false, same type and value
puts 1.equal?(1) # => same object id ??? what?


# swap variables
a, b = b, a
puts a, b

puts (1==1 ? a: b)

# from 1 to 10
(1..10).each do |num|
  print "#{num} "
end

puts

# from 1 to 9
(1...10).each do |num|
  print "#{num} "
end
puts

# same
puts (!true)
puts (not true)

# defined? is a special operator that takes the form of a method call
# to determine whether or not the passed expression is defined.
# It returns a description string of the expression, or nil if the expression isn't defined.
puts defined? a
puts defined? c
