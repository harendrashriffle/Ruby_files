# Iterators    :    return ele. one aftr other in array or hash

# 6 types 

# .each  with array

arr = [1,2,3,4,5]
arr.each do |i|
    puts i 
end


# .each with hash

H = Hash["a" => 100, "b" => 200]

H.each do |i|
    puts "#{i}" 
end


# .collect with array       # note : must use curly braces
a = [1,2,3,4,5]             #        and define var. in it
b = a.collect{a}
puts b


# .times  with array        # iterate acc. set no of times

a = [1,2,3,4,5]
4.times do |a|
    puts "#{a}*"
end

# .upto     An upto iterator iterates from number x to number y.

10.upto(20) do |i|          # here x < y 
    puts i    
end 


20.downto(10) do |i|        # here x > y
    puts i    
end

    
# .step 

(10..20).step(2) do |i|
    puts i   
end


# .each_line            # iterate ovr new line

a = "this\nis\nthe\nexample\nof\neach_line"

a.each_line do |line|
    puts line     
end