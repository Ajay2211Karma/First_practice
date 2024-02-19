class Box
    def initialize(w,h)     # Initialize the width and height
       @width,@height = w, h
    end
    def width
        @width
    end
    def height
        @height
    end
 
    def +(other)       # Define + to do vector addition
       Box.new(@width + other.width, @height + other.height)
    end
 
    def -@           # Define unary minus to negate width and height
       Box.new(-@width, -@height)
    end
 
    def *(scalar)           # To perform scalar multiplication
       Box.new(@width*scalar, @height*scalar)
    end
    def to_s
        " #{@width} #{@height}"
    end
 end
 b1 = Box.new(2,3)
 b2 = Box.new(4,5)
 puts b1+b2