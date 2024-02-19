#number between 1 to 999 is even or odd(major on the basis of digit of each number)
ary = (200..300).to_a
 ary.each do |item|
    count = 0 
    orignal = item
    while(item!=0)
        digit = item%10
        if(digit%2!=0)
            count+=1
            break
        end
        item= item/10
    end
    if(count==0)
        print "#{orignal} ,"
    end
end
