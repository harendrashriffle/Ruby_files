# Metaprogramming is a programming technique in which 
# computer programs have the ability to treat other programs 
# as their data. It means that a program can be designed to 
# read,generate, analyze or transform other programs, and 
# even modify itself while running.

# Metaprogramming is used in many programming languages, but
# it is particularly powerful in Ruby because of its dynamic
# nature and in built support for features like method_missing
# and define_method, which allow developers to define and 
# modify behavior at runtime.

# Basically Meta Programming has 3 methods

# 1). send_method    : A send method is a powerful tool in 
#                      Ruby that allows us to dynamically 
#                      invoke a method on an object, passing
#                      arguments to it as needed. If we want
#                      to create a new user object from a 
#                      hash of attributes, we can use the 
#                      send method to set each attribute 
#                      dynamically based on the keys in the 
#                      hash. 



# class Train 
#     attr_accessor :train_no, :arr_time, :dep_time

#     def assign_values(values)
#         values.each do |k,v|
#             self.send("#{k}=", values[k])
#         end
#     end
# end

# ticket = {
#     train_no: "21234",
#     arr_time: "10:30",
#     dep_time: "20:00"  
# }

# passenger_1 = Train.new

# passenger_1.assign_values(ticket)

# pp passenger_1




# 2). defined method : The define_method is a Ruby method 
#                      that allows developers to define new
#                      methods at runtime. This method takes
#                      a block of code and creates a new 
#                      method that executes that code. This 
#                      can be useful for creating dynamic 
#                      methods that are generated at runtime.


# class Train 
#     attr_accessor :p_name, :train_no, :arr_time, :dep_time

#     def initialize(p_name, train_no, arr_time, dep_time)
#         @p_name = p_name
#         @train_no = train_no
#         @arr_time = arr_time
#         @dep_time = dep_time
#     end

#     def self.details(values)
#         define_method("#{values}_details") do |arg|
#             puts "Passenger name : #{p_name} is travelling
#             from Train no : #{train_no}. 
#             Train Arrival time : #{arr_time}
#             Train Departure time : #{dep_time}"
#         end
#     end
# end


# passenger_1 = Train.new("Harendra","21234","10:30","20:00")

# Train.details(passenger_1.values)

# pp passenger_1.Harendra_details()



# 3). missing method : The method_missing is a method that is
#                      called when Ruby cannot find a method 
#                      in an object's class or any of its 
#                      ancestors. This method can be used to 
#                      dynamically handle method calls and
#                      generate methods at runtime.


class Train 
    attr_accessor :p_name, :train_no, :arr_time, :dep_time

   

    def method_missing(method_name, *arguments, &block)
        if (method_name.to_s.include?("ticket"))
            puts "Yes u call the method"
        else
            raise.ArrgumentError.new("Calling wrong method")
        end
    end
end

t = Train.new
t.create_ticket