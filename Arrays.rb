# Arrays   
#       : are ordered and integer indexed collection
#         of obects (string, numbers, hash, fixnum, array, symbol)
#       
#       Note : one array can have different types of objects
#
#       : +ve indexing start from 0, -ve start with -1
#       : Ruby array are dynamic i.e. they can increase 
#         their size


# Creation of Array 

# Note : to print in array form, use string interpolation #{}

array_1 = [24,5,"Harendra",]  # using literal constructor
puts array_1


array_2 = Array.new           # using Array new method
array_2 = [1,2,3,4,5]
puts "#{array_2}"


array_3 = Array.new(10)       # fixing size of array
puts array_3.size    
puts array_3.length


array_4 = Array(1..9)         # array from 1 to 9
puts "#{array_4}"


array_5 = Array("a".."z")     # array from a to z
puts array_5                  # print array in diffrent line
puts "#{array_5}"             # print array in an array


array_6 = Array.new(4, "mac") # create array with 4 ele. as mac
puts "#{array_6}"

array_7 = Array.new(10) { |e| e = e * 2} # create using block
puts "#{array_7}"


############################################################



# Accessing Array element

array_1 = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]

# []                        : arrayName[]  
puts "#{array_1[2]}"        # +ve index
puts "#{array_1[-1]}"       # -ve index
puts "#{array_1[2,3]}"      # > one element
puts "#{array_1[10]}"       # error : no element at index 10
puts "#{array_1[0..6]}"     # range


# .at()                     : arrayName.at()

puts "#{array_1.at(3)}"


# .slice()                  : arrayName.slice()

puts "#{array_1.slice(1)}"  # similar to [] method


# .fetch()                  : arrayName.fetch()

puts "#{array_1.fetch(0)}"  # similar to []
# puts "#{array_1.fetch(10)}"  # show error
puts "#{array_1.fetch(10,"oops")}"  # replace error with oops


# first and last method

puts "#{array_1.first}"
puts "#{array_1.last}"


# take method

puts "#{array_1.take(2)}" # returns first n elements of array.


# drop method

# opp. of take & returns elements after n elements have dropped.

puts "#{array_1.drop(5)}"



############################################################



# Adding Items to Array            :  3 ways

# push or <<           : add element at the back of array

array_1 = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]

puts array_1.push("Today")   
puts array_1 << ("Tomorrow")   


#unshift               : add element at the front of array

puts array_1.unshift("Today at front") 
puts "#{array_1}"  

#insert                : add element at any position in array using index

puts array_1.insert(2, "Everyday")  
puts "#{array_1}"   


############################################################


# Removing elements from array    : 4 ways

array_1 = ["Mon", "Tue", "Wed", "Thu","Thu", "Fri", "Sat", "Sun"]
puts "#{array_1}"

# pop                  : remove element from the end

array_1.pop
puts "#{array_1}"

# shift                : remove element form the front

array_1.shift
puts "#{array_1}"

# delete               : remove from anywhere using index

array_1.delete("Wed")
puts "#{array_1}"

# uniq                 : remove duplicate element

array_1.uniq           # it will not alter the array
puts "#{array_1.uniq}" 





###########################################################

# Built-in Methods of array

# 

