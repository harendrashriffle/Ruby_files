#next : to skip a term based in a condition

puts "Here we skip 3 using next keyword"
for i in 1..10
    next if i == 3
    puts i 
end

a = 0
while a < 5 do
    if a == 2
        a+=1
        next
    end
    puts a 
    a += 1
end


#break : it break the loop and take you out the loop

puts "Here we break loop at 3 using break keyword"
for i in 1..10
    break if i == 3
    puts i 
end

#redo : 
i = 4
while(i < 5)   # Prints "012345" instead of "01234"   
    puts i   
    i += 1   
    redo  
end

#retry
begin
    puts "i am in begin" # exception raised
rescue
    # handles error
    retry  # restart from beginning
end
