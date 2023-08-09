# while loop 

i = 0
num = 10

while i < num  do
   puts "value of i is : #{i}"
   i +=1
end


# Ruby while modifier (1st type)

a = 0
b = 5

begin
    puts " hi "
    a += 1
end while a < b


# Ruby while modifier (2nd type)


i = 0
puts "hi #{i += 1}"  while i < 5



###############################################################################

# Unitl Loop
# execute code till cond. remain false or until condition become true

i = 0
until i > 5 do
    puts "until loop"
    i+=1
end


# Until ruby modifier (1st type)

i = 0
begin
    puts "until ruby modifier (1st type)"
    i+=1
end until i>5

# Until ruby modifier (2nd type)

i = 0
puts "until ruby modifier (2st type) #{i+=1}" until i>5



#############################################################################

# for loop

for i in 1..5 do
    puts "for loop using range"
end

for i in ["hi","today","is","a","wonderful","day"]
    puts "fo loop using array, so array element #{i}"
end


# loop (do-while) loop
i = 0
loop do
    puts "do while loop"
    break if i > 2
    i+=1
end

