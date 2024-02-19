class Sample
    def area(a=9,b=9)
     a*b 
    end
end
class Demo < Sample
    def area(a=5,b=2)
        @c = a*b 
        print "#@c"
    end
end
d1 = Demo.new
p Sample.new.area