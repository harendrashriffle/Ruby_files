# Method 
# similar to function
# must be name with lowercase letter otherwise it will assume to be as constant
# must define with keyword "def" and end with keyword "end".
# Various types of parameter

# 1). Simple method      :  simply called and perform execution

def sayHi
    puts "Hi! Harendra"
end

sayHi


# 2). Method with parameter  :  called by supplying arguments/parameter to exec.

def sum a,b      # it can be any format [sum(a,b) or sum a,b] but not [suma,b]
    a+=b
    return a
end

puts sum(2,3)    # 1 way passing parameter
puts sum 4 , 5   # 2 way passing parameter

# 3). Method wih default parameter  :  if custom parameter is not passed then
#                                      default parameter will be called.

def mul a=2,b=3
    a*=b
    return a
end

puts "with parameter #{mul 4,5}"
puts "without parameter #{mul}"


# 4). Variable no of parameter  :  def methodName(*para)
#                                       code
#                                  end

def foodOrder(*order)
    puts "The no. of orders are : #{order.length}"
    for i in 0...order.length
        puts "order are : #{order[i]}"
    end
end

foodOrder "pizza","burger", "french fries"
foodOrder "Coke", "Sandwhich", "pizza", "extra cheese", "dal bati"

alias fO foodOrder

fO "pizza","burger", "french fries"

undef fO

# fO "pizza","burger", "french fries"   comment it, bcoz it is undef, so cause eror
foodOrder "Coke", "Sandwhich", "pizza", "extra cheese", "dal bati"