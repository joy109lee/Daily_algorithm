=begin
Here you will create the classic Pascal's triangle.
Your function will be passed the depth of the triangle and your code has to return the corresponding pascal triangle up to that depth.

The triangle should be returned as a nested array. For example:

pascal(5) -> [ [1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1] ]
To build the triangle, start with a single 1 at the top, for each number in the next row you just take the two numbers above it and add them together, except for the edges, which are all 1. e.g.:

      1
    1   1
  1   2   1
1   3   3   1

=end

def pascal (p)
    def helper(k)
        if k == 0
            return [1]
        end
        
        previous = pascal(k - 1)
        
        ret = []
        
        (previous.length - 1).times do |i|
            ret.push (previous[i] + previous[i + 1])
        end
        
        return [1, ret, 1].flatten
    end
    helper(p-1)
    

p pascal(5)