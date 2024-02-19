def test
    i =0 
    while i<4
        puts Time.now.strftime("%c %H:%M:%S  test is excecuting")
        sleep(2)
        i+=1
    end
end
def best
    j=0
    while j<3
        puts Time.new.strftime("%c %H:%M%:%S Best is excecuting")
        sleep(1)
        j+=1
    end
end
puts %Q{Now main thread will start}
t1 = Thread.new{test}
t2 = Threadclass Racktangle
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
print r3==Racktangle.allocate.new{best}
# t1.join
# t2.join
sleep(5)
