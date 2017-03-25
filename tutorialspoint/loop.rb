#!/usr/bin/ruby

i = 0
while i < 10
  puts i
  i += 1 # self increment operator
end

puts i while false

i =0
begin
  puts i
  i +=1
end while (i <10)

i=0
until i > 2
  puts 'until 2'
  i+=1
end

begin
  puts 'until 2'
  i+=1
end until i >2


# for loop
for i in 1..5
  puts i**2
end

(1..5).each do |i|
  puts i**2
end

# break
for i in 1..5
  if i==3
    puts 'it is 3, stop.'
    break
  end
  puts  i
end

# next
for i in 1..5
  if i==3
    puts 'it is 3, next.'
    next
  end
  puts  i
end

# redo
for i in 1..5
  if i==1
    puts 'redo 3, and next'
    # redo # this will go to infinite loop
  end
  puts  i
end

# retry
a = 5
b = 0
begin
  puts "a/b #{a/b}"
rescue
  puts 'cannot divide by 0'
  # fix it and retry
  b = 1
  retry
end
