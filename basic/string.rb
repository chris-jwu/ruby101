#!/usr/bin/ruby

# Expression Substitution:
x , y , z = 1, 2, 3
puts "#{x}, #{y}, #{z}"
puts "#{x+y+z}"
puts "#{x*2}"

# General Delimited Strings:
puts  %{---Ruby is fun. {{}}š@#{$@}--}
puts %Q{---Ruby is fun. \a         --}
puts %q{---Ruby \a                 --}  # equals single quoted string
# puts %x!ls!

# In a double-quoted string, an escape character is interpreted; in a single-quoted string, an escape character is preserved.
puts "\a" # prints Bell or alert
puts '\a' # prints \a
