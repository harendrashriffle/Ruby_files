#  directory  :  contains all files

# Dir.chdir("/usr/bin")  : to change directory

puts Dir.chdir("/home/hp/Documents/ruby files")
puts "1"


# Dir.pwd      :  shows the current directory
puts Dir.pwd
puts "2"


# Dir.entries  :  to print all files or directories in it

puts Dir.entries("/home/hp/Documents/ruby files").join("\n")

puts "2"
# Dir.entries  :  returns an array with all the entries

Dir.foreach("/home/hp/Documents/ruby files") do |entry|
    puts entry
end
puts "4"
# Dir["/usr/bin/*"]  :   concise way of getting directory listings


puts Dir["/home/hp/Documents/ruby files/*"]