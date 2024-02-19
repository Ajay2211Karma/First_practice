str = "this is String"
p str.frozen?
str.freeze
#  p str.chop!
#  p str.chop! cant change the mutable object content
puts str
p str.frozen?
sym = :symbol
p sym
p sym.frozen?
hash = {}
p hash.class