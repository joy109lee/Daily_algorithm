=begin
You are given an array (which will have a length of at least 3, but could be very large) containing integers. 
The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. 
Write a method that takes the array as an argument and returns this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)
=end

def find_outlier(integers)
    if integers[0].odd?
        if integers[1].odd?
            for i in range(2...integers.length)
                return integers[i] if integer[i].even?
        return integers[1] if integers[2].odd?
        return integers[0]
            
    elsif integers[0].even? 
        if integers[1].even?
            for i in range(2...integers.length)
                return integers[i] if integer[i].odd?
        return integers[1] if integers[2].even?
        return integers[0]
end


integers = [2, 4, 0, 100, 4, 11, 2602, 36]
p find_outlier(integers)