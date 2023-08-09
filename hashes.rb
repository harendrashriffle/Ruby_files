# Hashes 

# A form of collection in key-value pair
# similar to array except accessing of elements
# in hash elements are access by key 
# Note : hash created by {} , and access by []

# creating a Hash 

# 1 way

color = {
    'day_1' => 'Monday',
    "day_2" => "Tueday",
    "day_3" => "Wednesday",
    "day_4" => "Thursday",
    "day_5" => "Friday",
    "day_6" => "Saturday",
    "day_7" => "Sunday",
}

puts color['day_1']


# 2 way                 : default value is nil

month = Hash.new
puts month['hi']

# 3 way                 : default value is what you set

months = Hash.new("No key / Value")
puts months["hi"]


# 4 way

hash_1 = Hash["color" => "red", "colors" => "channel"]
puts hash_1['color']

###########################################################

# Modifying Hash Value

color = {
    'day_1' => 'Monday',
    "day_2" => "Tueday",
    "day_3" => "Wednesday",
    "day_4" => "Thursday",
    "day_5" => "Friday",
    "day_6" => "Saturday",
    "day_7" => "Sunday"
}

color['day_8'] = "everyday"

color.each do |key,value|
puts "#{key} : #{value}"
end


############################################################


# Built in functions

# 2 types  : public class methods
#            public instance methods


# public class methods  : 3 types

# Hash[obj]
# new(obj)
# try_convert(obj)


# public instance methods

puts color == month    # check similarity of 2 hashes
puts color['day_1']    # check value of key
puts color['day_9'] = "All Day" # assign value


H = Hash["a" => 100, "b" => 200]

H.default(key = nil)

puts H.delete('a')
puts H.eql?(color)
puts H.fetch('b')
puts H.has_key?('b')
puts H.has_value?(200)
puts H.include?("b")
