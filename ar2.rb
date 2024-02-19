class Box
    attr_accessor :x, :y
    def initialize(x, y)
      @x = x
      @y = y
    end
    # Overload the + operator
    def +(other)
      Box.new(@x + other.x, @y + other.y)
    end
    # Overload the == operator
    def ==(other)
      @x == other.x && @y == other.y
    end
  end
  # Create two instances of Box
  b1 = Box.new(1, 2)
  b2 = Box.new(3, 4)
  # Use the overloaded + operator
  result = b1 + b2
  puts "Result: (#{result.x}, #{result.y})" # Output: Result: (4, 6)
  # Use the overloaded == operator
  puts b1 == b2 # Output: false
  