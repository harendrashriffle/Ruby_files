# Regular expression used to mach pattern against strings
# pattern are written in forward slash : /pattern/
# =~ and #match : operator & if match found return 1st index

# =~ : match is found, returns index of first match or nil.
puts /java/ =~ "Hello, this is javatpoint"
puts /hello/ =~ "Hello, this is javatpoint"

# #match : returns MatchData object on matching otherwise nil.
#          here # is pattern

puts /point/.match("Hello, this is javatpoint")
puts /llo/.match("Hello, this is javatpoint")
puts /hello/.match("Hello, this is javatpoint")


# meta character : (,),(.),(?),(+),(-),(*),[,],{,} these are
#                  meta character and are used by blackslash
#                  to match a particular string

puts /Hello\, Welcome to our site\./.match("Hello, Welcome to our site.")


# Character classes

# these are encircled in square bracket

puts /j[aeiou]va/.match("java")

# [a-d] shows the range

puts /[a-ge-p]/.match('go')

# [^a-d] show the character which not in range

puts /[^a-ge-n]/.match('go')

# Qantifiers : used to find repetitive characters

puts "SSSIT".match(/S{3}/)


# Grouping

# uses () to group the terms together to make them one.

puts /[aeiou]\w{2}/.match("family")

line = "Cats can be a pet Cats"
puts "Yes" if ( line =~ /Cats(.*)/ )

l1 = "please come and contact with me"
l2 = "please find the pair of coins"
puts l1.match(l2)