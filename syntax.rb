#!/usr/bin/ruby -w

seperator = '.... seperator line ...... '

# print without newline
print 'Hello Ruby' # with new 

# print with newline
puts 'Hello Ruby'

puts seperator

=begin
# Here Document
# If the terminator is quoted, 
# the type of quotes determines the type of the line-oriented string literal. 
# Notice there must be no space between << and the terminator.
=end
print <<doc_string
	this is a line1
	this is a line2
	this is a line3
doc_string

puts seperator

# same as above, but with double quotes and
print <<"doc_string"
	this is a line4
	this is a line5
	this is a line6
doc_string

puts seperator

# execute commands
print <<`exe_cmd`
	pwd
exe_cmd

puts seperator

# stack 2 together
print <<`exe_cmd`, <<doc_string
	pwd
exe_cmd
	'this is a string'
doc_string

puts seperator


# ruby BEGIN and END statement, code to be executed before and after program is run
BEGIN {
	puts "Begin code execution for syntax.rb"
}

END {
	puts "End code execution for syntax.rb"
}