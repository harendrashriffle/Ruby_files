# Control are required to decide the flow of th program

# if 

a = 2
if a<4
    puts "yes"
end

# if-else

if a > 4
    puts "a is greater"
else
    puts "a is small"
end

# if-elsif-else

if a > 4
    puts "a is greater"
elsif a == 4
    puts "a is = 4"
else
    puts "a is small"
end

# ruby modifier if statement

puts "Hello" if a == 2

############################################################


# unless : it execute a code unless the code is false

a = 4 
unless a >= 5
   puts "a is less than 5"
 else
   puts "a is greater than 5"
end
        
# ruby modifier unless statement

var = false
puts "Yes" unless var



############################################################

# case : it compares the expression speciefied by case 
# to expression mention in when

weight = 50

case weight
when 10..20
    puts "very low weight"
when 21..40
    puts "still need to increase"
when 41..60
    puts "maintained"
when 61..80
    puts "slightly increased"
else
    puts "overweight"
end


#############################################################

# ternary operator

puts (1>3?2:3)


