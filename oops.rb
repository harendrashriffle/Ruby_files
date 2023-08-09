# OOP    :   Object Oriented 


# Ruby Class    : Blue print , tells what it's object consist
#                 of and what action it can perform

# Ruby Object   : An instance of class, an object is physical
#                 and logical entity but class is logical
#                 entity.


                # class RubyClassExample
                    
                #     @@class_var_1
                #     @@class_var_2

                #     def PrintRubyExample
                #         puts RubyInstance_1
                #     end
                # end

# create object using new method

                # obj_1 = RubyClassExample.new  

# create object using custom method ( pass arguments)

        # obj_1 = RubyClassExample.new(arg_1,arg_2,arg_3)


# class Sample
#     def hello
#         puts "Hello Harendra"
#     end
# end

# sample_obj_1 = Sample.new
# sample_obj_1.hello

############################################################
############################################################
############################################################
############################################################

                    # ENCAPSULATION

# # print employee

        # class Customer 
        #     @@total_no_of_customer = 0
        #     def initialize(id,name,addr)   #  Constructor
        #         @cust_id = id
        #         @cust_name = name
        #         @cust_addr = addr
        #     end
        #     def display_details
        #         puts "Customer id = #{@cust_id}"
        #         puts "Customer Name = #{@cust_name}"
        #         puts "Customer addr = #{@cust_addr}"
        #     end
        #     def total_no_of_customer
        #         @@total_no_of_customer += 1
        #         puts "Total no of emloyees = #@@total_no_of_customer"
        #     end
        # end

        # customer_1 = Customer.new("1","Harendra","Indore")
        # customer_1.display_details
        # customer_1.total_no_of_customer

        # customer_2 = Customer.new("2", "Pratap", "New Empire road Khandala")
        # customer_2.display_details
        # customer_2.total_no_of_customer

############################################################
############################################################
############################################################
############################################################

                    # VARIOUS METHODS

# accessor method

                # class Box
                #     # constructor method
                #     def initialize(w,h)
                #         @width = w 
                #         @height = h 
                #     end

                #     # accessor method

                #     def printwidth
                #         @width
                #     end

                #     def printheight
                #         @height
                #     end
                # end

                # box_1 = Box.new(10,20)
                # x = box_1.printwidth
                # y = box_1.printheight

                # puts x,y



# Instance Method

                # class Box
                #     def initialize(w,h)
                #         @width = w 
                #         @height = h 
                #     end

                #     # Instance method

                #     def getArea
                #         @width*@height
                #     end
                # end

                # box_1 = Box.new(10,20)
                # puts box_1.getArea


# class method and Variable 


                # class Box
                #     @@count = 0
                #     def initialize(w,h)
                #         @width = w 
                #         @height = h 
                #         @@count +=1
                #     end

                #     def self.printCount()
                #         puts @@count
                #     end
                # end

                # box1 = Box.new(10,20)
                # Box.printCount


############################################################
############################################################
############################################################
############################################################



                    # ABSTRACTION

# Access Modifier

                # class Box
                #     def initialize(w,h)
                #         @width, @height = w,h 
                #     end

                #     def getArea
                #         getwidth * getheight
                #     end

                #     def getwidth
                #         @width
                #     end
                #     def getheight
                #         @height
                #     end

                #     private :getwidth , :getheight

                #     def printArea
                #         @area = getwidth * getheight
                #         puts @area 
                #     end

                #     protected :printArea

                # end

                # box = Box.new(10,20)
                # a = box.getArea()
                # puts "#{a}"
                # box.printArea



############################################################
############################################################
############################################################
############################################################

                    # INHERITANCE

                # class Box
                #     def initialize(w,h)
                #         @width, @height = w,h 
                #     end
                #     def getArea
                #         @area = @width * @height
                #     end
                # end

                # class BigBox < Box
                #     def printArea
                #         @area = @width * @height
                #         puts "#@area"
                #     end
                # end

                # box_1 = BigBox.new(10,20)
                # box_1.printArea


############################################################
############################################################
############################################################
############################################################

                    # POLYMORPHISM

# Method Overriding

                # class Box
                #    # constructor method
                #    def initialize(w,h)
                #       @width, @height = w, h
                #    end
                #    # instance method
                #    def getArea
                #       @width * @height
                #    end
                # end

                # # define a subclass
                # class BigBox < Box

                #    # change existing getArea method as follows
                #    def getArea
                #       @area = @width * @height
                #       puts "Big box area is : #@area"
                #    end
                # end

                # # create an object
                # box = BigBox.new(10, 20)

                # # print the area using overriden method.
                # box.getArea()




# Operator Overloading


############################################################
############################################################
############################################################
############################################################


# freeze method

                # class Box
                #     # constructor method
                #     def initialize(w,h)
                #        @width, @height = w, h
                #     end
                
                #     # accessor methods
                #     def getWidth
                #        @width
                #     end
                #     def getHeight
                #        @height
                #     end
                
                #     # setter methods
                #     def setWidth=(value)
                #        @width = value
                #     end
                #     def setHeight=(value)
                #        @height = value
                #     end
                #  end
                
                #  # create an object
                #  box = Box.new(10, 20)
                
                #  # let us freez this object
                #  box.freeze
                #  if( box.frozen? )
                #     puts "Box object is frozen object"
                #  else
                #     puts "Box object is normal object"
                #  end
                
                #  # now try using setter methods
                #  box.setWidth = 30
                #  box.setHeight = 50
                
                #  # use accessor methods
                #  x = box.getWidth()
                #  y = box.getHeight()
                
                #  puts "Width of the box is : #{x}"
                #  puts "Height of the box is : #{y}"


# Class Constant

                # class Box
                #     BOX_COMPANY = "TATA Inc"
                #     BOXWEIGHT = 10
                #     # constructor method
                #     def initialize(w,h)
                #        @width, @height = w, h
                #     end
                #     # instance method
                #     def getArea
                #        @width * @height
                #     end
                #  end
                
                #  # create an object
                #  box = Box.new(10, 20)
                
                #  # call instance methods
                #  a = box.getArea()
                #  puts "Area of the box is : #{a}"
                #  puts Box::BOX_COMPANY
                #  puts "Box weight is: #{Box::BOXWEIGHT}"


# Create object using allocate

                # class Box
                #     attr_accessor :width, :height
                
                #     # constructor method
                #     def initialize(w,h)
                #        @width, @height = w, h
                #     end
                
                #     # instance method
                #     def getArea
                #        @width * @height
                #     end
                #  end
                
                #  # create an object using new
                #  box1 = Box.new(10, 20)
                
                #  # create another object using allocate
                #  box2 = Box.allocate
                
                #  # call instance method using box1
                #  a = box1.getArea()
                #  puts "Area of the box is : #{a}"
                
                #  # call instance method using box2
                #  a = box2.getArea()
                #  puts "Area of the box is : #{a}"


# Class Information

                # class Box
                #     # print class information
                #     puts "Type of self = #{self.type}"
                #     puts "Name of self = #{self.name}"
                # end