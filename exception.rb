# Exception : An event where program throw error or halt


###########################################################

# begin-rescue-end  :  begin-rescue will have the code 
#                      where an exception can occur.
#                      rescue-end have the code which deals 
#                      with the exception occur

# begin               
#     a=gets
#     b=Integer(gets)
#     c = b/a          # exception : b is integer & a is string
# rescue => exception
#     puts "kindly enter an integer"
#     a = Integer(gets) # handle exception by gving Integer
#     c = b/a    
#     puts c
# end

###########################################################

# begin-rescue-rescue-rescue-end

# puts 'starting up'
# begin
#   case rand(3)
#   when 0
#     ([] + '')
#   when 1
#     (foo)
#   when 2
#     (3 / 0)
#   end
# rescue TypeError, NameError => e
#   puts "oops: #{e.message}"
# rescue Exception => e
#   puts "ouch, #{e}"
# end
# puts 'done'


###########################################################



# begin-rescue(retry)-end


# begin          
#     a=gets.to_i
#     b=gets.to_i
#     puts b/a        # exception : b is integer & a is string
# rescue 
#     puts "kindly enter an integer"
#     retry
# end


###########################################################



# begin-rescue-rescue-ensure-end : ensure clause  guarantees 
#                                  some processing at the end
#                                  of code. The ensure block
#                                  always run whether an 
# exception is raised or not. It is placed after last rescue 
# clause and will always executed as the block terminates.
#
# The ensure block will run at any case whether an exception
# arises, exception is rescued or code is terminated by 
# uncaught exception.


# begin               
#     a=gets
#     b=Integer(gets)
#     c = b/a          # exception : b is integer & a is string    
# rescue => exception_1
#     puts "kindly enter an integer"
#     d = Integer(gets) # handle exception by gving Integer
#     c = b/a    
#     puts c
# rescue => exception_2
#     puts exception_2.message
#     puts "kindly enter an integer"
#     a = Integer(gets) # handle exception by gving Integer
#     c = b/a    
#     puts c
# ensure
#     puts "this code will run always"
# end


##########################################################

# Using else Statement

# else clause always present after rescue clause and before 
# ensure clause. If no exceptions are raised, then only else
# block is executed.

# begin
#     # raise 'A test exception.'
#     puts "I'm not raising exception"
#  rescue Exception => e
#     puts e.message
#     puts e.backtrace.inspect
#  else
#     puts "Congratulations-- no errors!"
#  ensure
#     puts "Ensuring execution"
#  end


###########################################################

# catch and throw       :  to jump out of some deeply nested 
#                          construct during normal processing.
#                          This is where catch and throw come
#                          in handy.

# The catch defines a block that is labeled with the given 
# name (which may be a Symbol or a String). The block is 
# executed normally until a throw is encountered.


def promptAndGet(prompt)
    print prompt
    res = readline.chomp
    throw :quitRequested if res == "!"
    return res
 end
 
 catch :quitRequested do
    name = promptAndGet("Name: ")
    age = promptAndGet("Age: ")
    sex = promptAndGet("Sex: ")
    # ..
    # process information
    
 end
