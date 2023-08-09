# String : sequence of character(byte)

=begin
    
Imp of string
    must be written between ' ' quote or "" quote
    for using apostrophe s you use \'. eg: 'I don\'t listen'
                                     o/p :  I don't listen

=end

msg = "hi how are you"
ans = 'I am fine'

# Accessing string element
 
puts msg[0], msg[1,4], msg[0..10], msg[-3]

# String interpolation 

age = 10
puts "My child is of #{age} years"

# ways of multiline strings

puts "   
Hi
Everyone
How 
are
you"   

puts %/   
we 
are  
fine
Thankyou/  
=begin
  
puts<<STRING   
Do   
You
Have   
Lunch   
STRING  
=end 


#escape character

puts "this is \vthe longest string you could ever see 
because this string is basically used to define the properties of 
escape characters"


# String Concatenation

string = "Hi hello" + " Everyone" + " Wish you all good luck."   
puts string   
  
string = "Hi hello" " Everyone" " Wish you all good luck."   
puts string   
  
string = "Hi hello" << " Everyone" << " Wish you all good luck."   
puts string   
  
string = "Hi hello".concat(" Everyone").concat(" Wish you all good luck.")   
puts string  


# Making Stings immutable

str = "Original string"   
   
puts str   
  
str.freeze   
  
str << " is modified " 


# Comparing Strings

=begin

strings can be compared with three operators:
With == operator : Returns true or false
With eql? Operator : Returns true or false
With casecmp method : Returns 0 if matched or 1 if not matched

=end

puts "Bottle" == "bottle"   
puts "sushi" == "sushi"   
  
  
puts "Bottle".eql? "Bottle"   
puts "sushi".eql? "sushi"   
  
puts "Bottle".casecmp "Bottle"   
puts "sushi".casecmp "sushi"   
  