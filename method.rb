#!/usr/bin/ruby -w

def test(a=1, b=2)
  puts "#{a} #{b}"
end

test
test(2)
test 2
test(2,3)
test 2, 3

# method without return but returns value
def get_number
  1
  # x = 1
  # y = 2
  # this will return last assigned number
end

puts get_number


# method with return
def get_numbers
  x=1
  y=2
  z=3
  return x,y,z
end

number_array = get_numbers
number_array.each do |number|
  print number
end
puts

# variable number of params
def print_everyone(*person)
  for i in 0..person.size
    puts person[i]
  end
end

print_everyone 'chris','jack'
print_everyone 'james'

# class method
class Accounts
  def Accounts.getNum
    "23847239472384832794"
  end
end

puts Accounts.getNum

# alias method - use 1st param as alias for 2nd param method
alias numbers get_numbers
puts numbers

# cancels method definition
undef numbers

# puts numbers # this will throw undefined method error
puts get_numbers # no error
