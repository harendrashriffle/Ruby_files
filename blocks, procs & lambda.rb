# blocks
# use to have a set of instruction between do/end or {}
# invoke only by function using yield

                def print_l
                    puts "2"
                    yield
                end

                print_l{puts "we are in block"}


# block with multi yield and single argument

                def print_1
                    yield 1
                    yield 2
                    yield 3
                end

                print_1{|x| puts x**x}

                # block with multi aguments

                def print_2
                    yield 1,2,"hi"
                    puts "hi bro"
                    yield 3,4
                end
                print_2{|x,y,z| puts "#{z} = #{x+y}" }

                # block to be used explicitly

                def explicit_block_call(&block)
                    block.call
                end

                explicit_block_call{puts "welcome abroad"}

def checkBlock
    puts "NO BLOCK GIVEN" unless block_given?
    yield
end



#############################################################
#############################################################
#############################################################
#############################################################


# Lambda
# use to defne a block & its parameter with some special syntax
# lambda save into var. for later use

                hi = -> {puts "Say hi to everyone"}
                hi.call

# various ways to call lambda

hi = -> {puts "Say hi to everyone"}
hi.call

hi.call
hi.()
hi[]
hi.===

# lambda with argu

times_two = ->(x) { puts x * 2 }
times_two.call(10)



#############################################################
#############################################################
#############################################################
#############################################################


# Proc

# Similar to lambda, but > it. 
# There is no lambda class but it is proc's object.

proc = Proc.new {puts "its proc"}
proc.call

# lambda even executes the code after call but proc stop
# exceution after call 

def proc_demo_method
    proc_demo = Proc.new { return "Only I print!" }
    proc_demo.call
    "But what about me?" # Never executed
end
  
puts proc_demo_method 

# Output 
# Only I print!

# (Notice that the proc breaks out of the method when it 
# returns the value.)
  
def lambda_demo_method
    lambda_demo = lambda { return puts "Will I print?" }
    lambda_demo.call
    "Sorry - it's me that's printed."
end
  
puts lambda_demo_method

# Output
# Sorry - it's me that's printed.
  
# (Notice that the lambda returns back to the method in order
# to complete it.)
