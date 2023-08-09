# file I/O      : way to inmteract wuth system
#               : Data set inform of bute/char
#               : I/O is the basis for I/O in ruby
#               : has subclas as File calss to read/write files

# basic I/O methods

                puts "Hi Harendra"
                print "Hi Everyone"
                putc "Hi"
                puts "\nhi"
                a = gets
                puts a


=begin

for all this time I work on standard I/O
Now
It's Time to learn getting i/o from files
    
=end

####    NOTE : u can perform read, write, both in
#              file using File.new  &  File.open
#              methods  and  there are lots of 
#              combination with their own methods 
#              to write or to read


#  File.new   : used to create files for read,write or both


            # file_1 = File.new("File_i_o_test","a")
            #   file_1.syswrite(gets) 
            # file_1.close

            # file_1 = File.new("File_i_o_test","a")
            #   file_1.puts gets 
            # file_1.close

            # File.open("File_i_o_test", "a") do |f|   
            #     f.puts "This is 3rd way"   
            #     f.write "to write.\n"   
            #     f << "in file .\n"   
            # end   



# File.open   : to open file in choosen mode

            # File.open("File_i_o_test","r") do |s|
            #     s.sysread(20)
            # end

            # puts IO.readlines("File_i_o_test")

    # IO.foreach("File_i_o_test"){|block| puts block}


    
# File.rename

#           File.rename("File_i_o_test", "F_i_o_t")


# File.delete

#                    File.delete("F_i_o_t")




# Change mode to get access

file = File.new( "File_i_o_test", "r" )
file.chmod( 0755 )


###########################################################


# File Inquries       # set of certain commands to inquire


# ::exist?

puts File.open("File_i_o_test") if File::exists? ("File_i_o_test") # else puts "No file exist"


# .file

puts File.file?("File_i_o_test")


# .readable , .writable, .executable  :  check mode

puts File.readable?( "File_i_o_test" )   # => true
puts File.writable?( "File_i_o_test" )   # => true
puts File.executable?( "File_i_o_test" ) # => false

# .zero     : to check file has zero size

puts File.zero?( "File_i_o_test" )


# .size     : to check size of file

puts File.size?( "File_i_o_test" )     # => 1002

# ::ftype   : file, directory, characterSpecial, blockSpecial, 
#             fifo, link, socket, or unknown.

puts File::ftype( "File_i_o_test" )     # => file






