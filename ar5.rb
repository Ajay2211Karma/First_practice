class Racktangle
    #constructor
    def initialize(w,h)
    @width,@height=w,h
    end
    #define getter method
    def getWidth
        @width
    end
    def getHeight
        @height
    end
    #define setter method 
    def setWidth=(value)
        @width=value
    end
    def setHeight=(value)
        @height=value
    end
    alias width getWidth
    alias height getHeight
    # + operater(method) overloading for adding a object data
    def +(other)
        Racktangle.new(width+other.width,height+other.height)
    end
    # - oprator overloading
    def -(other)
       Racktangle.new(width-other.width,height-other.height)
    end
    # * operator overloading
    def *(other)
        Racktangle.new(width*other.width,height*other.height)
    end
    def to_s
        "w #@width , h #@height \n"
    end
end
r1 = Racktangle.new(4,5)
r2 = Racktangle.new(8,9)
print r1 
print r2
print r1+r2
print r1*r2
print r2-r1 
p r1.frozen?
r1.freeze
p r1.frozen?
# r1.setHeight=10 can't change the frozen object  ok
p r2.frozen?
r2.freeze
p r2.frozen?
r3 = Racktangle.allocate
print r3==Racktangle.allocate