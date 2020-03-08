#!/usr/bin/ruby

# passing code blocks into method

# yield
def test_method
  puts 'starting test method'
  yield
  puts 'ending test method'
end

test_method {puts 'say something'}

# yield with 1 param
def test_method
  puts 'starting test method'
  puts yield 5
  puts 'ending test method'
end

test_method {|number| "printing number #{number}"}

# yield with 2 param
def test_method
  puts 'starting test method'
  puts yield 5, 6
  puts 'ending test method'
end

test_method {|number1, number2| "printing number #{number1}, #{number2}"}


BEGIN { 
  # BEGIN block code 
  puts "BEGIN code block"
} 

END { 
  # END block code 
  puts "END code block"
}
  # MAIN block code 
puts "MAIN code block"
