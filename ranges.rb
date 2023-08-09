# Ranges   : sequence or series

# use of ranges :
#       as Sequences
#       as Conditions
#       as Intervals


# Sequences   :ranges express a sequence. start point, an end point

range_1 = 1..9             # inclusive
puts "#{(range_1).to_a}"   # to_a  : ype conversion to array

range_2 = 1...9            # exclusive
puts "#{(range_2).to_a}"   

# Ranges implement methods that let you iterate over them and test their contents in a variety of ways −

digits = 0..9

puts digits.include?(5)    # check if 5 is present in digits
puts "Min value is #{digits.min}"    # min no in series
puts "Max value is #{digits.max}"    # max no in series

ret = digits.reject {|i| i < 5 }     # to reject no < 5
puts "Rejected values are #{ret}"

digits.each do |digit|               # to run a loop
   puts "In Loop #{digit}"
end



# Conditions


score = 70

result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end

puts result


# Ranges as Intervals       :  final use as an interval test: 
#                              if some value falls within the
#                              interval represented by the
#                              range. done using ===, the
#                              case equality operator.        
                                   

if ((1..10) === 5)
   puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
   puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
   puts "z lies in ('a'..'j')"
end




