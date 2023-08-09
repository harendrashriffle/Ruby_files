# Time         Time class represents dates and times in Ruby.

# get current time

puts Time.new               # Till sec
puts Time.new.inspect       # Till Micro Sec


# Components of a Date & Time

time = Time.new

puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name


# formating time and date


puts Time.new

puts Time.new.to_s
puts Time.new.ctime
puts Time.new.localtime
puts Time.new.strftime("%m-%Y-%d   %H:%M:%s")


# Time formatting derivatives

puts Time.new.strftime("%b-%Y-%d   %H:%M:%s")
puts Time.new.strftime("%b-%Y-%d   %H:%M:%S %p   %c %Tn")

puts Time.now.to_i 


