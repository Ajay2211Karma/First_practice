def test
    i=0
    while i<=2
        puts "test at #{Time.now}"
        sleep(2)
    i+=1
    raise ""
    end
end
def best
    j=0
    while j<=2
        puts "best at #{Time.now}"
        sleep(1)
        j+=1
    end
end
puts "stard main thread "
t1 = Thread.new{test}
t2 = Thread.new{best}
t1.join
t2.join
