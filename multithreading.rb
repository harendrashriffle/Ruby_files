# A simple program has single thread
# But a complex program has multiple thread
# and with multi thread all thread run at once

# Thread Initialization  :  3 ways
# 1). thread.new
# 2). thread.start
# 3). thread.fork

                    # def thread_1
                    #     i = 0
                    #     while i<=10
                    #         puts "2 X #{i} = #{2*i}  at   #{Time.now}"
                    #         sleep(1)
                    #         i+=1
                    #     end
                    # end

                    # def thread_2
                    #     j = 0
                    #     while j<=10
                    #         puts "3 X #{j} = #{3*j}  at   #{Time.now}"
                    #         sleep(1)
                    #         j+=1
                    #     end
                    # end

                    # puts "Started at time : #{Time.now}"
                    # t1 = Thread.new{thread_1}
                    # t2 = Thread.new{thread_2}
                    # t1.join
                    # t2.join
                    # puts "end at time : #{Time.now}"

# Thread Termination

                    # Thread.kill(t1)
                    # Thread.kill(t2)

# Thread Exception Handling

# it is done by thread.abort_on_exception = true

# t3.abort_on_exception = true

def thread_3
    begin
    a = "hello"
    b = 2
    sleep(5)
    c = a/b
    rescue Exception => e
        Thread.kill(e)
    end
end

def thread_4
    j = 1
    while j<=10
        puts "3 X #{j} = #{3*j}  at   #{Time.now}"
        sleep(1)
        j+=1
    end
end

t3 = Thread.new{thread_3}
t4 = Thread.new{thread_4}
t3.join
t4.join
puts "end at time : #{Time.now}"



Thread.kill(t4)
