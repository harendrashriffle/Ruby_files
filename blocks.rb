def test
    yield
    puts "method block"
    yield
end

test{
    puts "this is a block"
}


def try(&block)
    block.call
 end
try{ puts "Hello World!"}



def ho
    yield 5
    puts "Now you are in main block"
    yield 10
end

ho{
    |i| puts "this is #{i}"
}

def h 
    yield 5,4
    puts "U r in method"
    yield 10,20
end

h{
    |i,j| puts "multiply is #{i*j}"
}