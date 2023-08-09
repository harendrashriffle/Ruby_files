# Arithmetic operators : +,-,*,/,%,**(expo)


a = 10
b = 2
puts "value of a is #{a} and b is #{b} \n"
puts "This is the Arithmetic operators result"
puts a + b
puts a - b
puts a * b
puts a / b
puts a ** b 
puts a % b


# Relation opertors

puts "\n\n value of a is #{a} and b is #{b} \n"
puts "This is the Relation operators result"
puts a > b
puts a < b
puts a == b
puts a != b
puts a >= b
puts a <= b
puts a <=> b
puts a === b
puts a.eql?(b) # it return 0 if 


# Assignment operator

puts "\n\n value of a is #{a} and b is #{b} \n"
puts "This is the Assignment operators result"
puts a += 2
puts a -= 2
puts a *= 2
puts a /= 2
puts a **= 2
puts a %= 2

# Noteble thing is that in ruby we can do parallel asignment.

d,e,f = 1,2,3
puts "#{d},#{e},#{f}"

# Bitwise operator

puts "\n\n value of a is #{a} and b is #{b} \n"
puts "This is the Bitwise operators result"
puts a & b
puts a | b
puts a ^ b
puts ~a
puts a << 2
puts a >> 2


#Logical Operator

puts "\n\n value of a is #{a} and b is #{b} \n"
puts "This is the Logical operators result"
a = true
b = false
puts a and b
puts a or b
puts a && b
puts a || b
puts !a
puts not(a)

=begin
Range 
(..) these operator between two number defines inclusive range
eg  1..10 means 1 t0 10

(...) these operator are exclusive operator
eg  1...10 means 1 to 9
=end

puts "\n\nThis is the (..) Range operators result"
puts "Range of a is (1..5 this is inclusive i.e. it include 5)"
a = (1..5)

puts "does a include 5 #{a.include?(5)}"

puts "\n\nThis is the (...) Range operators result"
puts "Range of b is (1...5 this is exclusive i.e. it not include 5)"
b = (1...5)

puts "does b include 5 #{b.include?(5)}"


# defined? operator 

=begin
it helps to know weather a followed expression or variable
(include variable type) is defned or not
=end

puts "we use defined?a to check weather we deifned or not \n#{defined?a}"


# (.) operator 
# it is used to call a user or built-in method

b = (1...5)

puts "to check does b include 5 we use b.include(5) #{b.include?(5)}"


# (::) operator

=begin
This unary operator allows the contants, instancs, methods
and class methods which are defined inside the class or 
module to be accessed anywhere outside the class or module
=end









