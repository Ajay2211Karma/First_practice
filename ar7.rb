#Convert the Array into hash where the keys is element and the value is occurance of the number
print "Enter the Input of Array element in comma saprated form \n "
strary = gets.chomp.split(',')
ary = strary.collect{|item| item.to_i}
no = 0
hash = {}
ary.each do |i|
    if(hash.key?(i))
        hash.store(i,hash[i]+1)
    else
        hash.store(i,1)
    end
end
puts hash