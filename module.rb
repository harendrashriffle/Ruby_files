# Module
# is is a set of class, constant, and methods.
# use as namespace or file which are invoked using "required"
# use to apply multiple inheritance
# module is not class so no instance, but it have classes

module Trig
    PI = 3.141592654
    def Trig.sin(x)
    
    end
    def Trig.cos(x)
    
    end
 end

 # u can different module with same method name

 module Moral
    VERY_BAD = 0
    BAD = 1
    def Moral.sin(badness)

    end
 end


# require : use to invoke other module

$LOAD_PATH << '.'# use to give module path if u use "require"
                 
require 'trig.rb'  #module
require 'moral'    #module

y = Trig.sin(Trig::PI/4)   # :: use to call module constant 
wrongdoing = Moral.sin(Moral::VERY_BAD) 


#  use required_relative as alternative of $LOAD_PATH<<','





# Mixins in Ruby   :    use include for module and class 
#                       define in smae file

module A
    def a1

    end

    def a2

    end

 end

 module B
    def b1

    end

    def b2

    end

 end
 
 class Sample
 include A
 include B
    def s1
        
    end
 end
 
 samp = Sample.new
 samp.a1
 samp.a2
 samp.b1
 samp.b2
 samp.s1

