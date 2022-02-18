=begin
In this kata we want to convert a string into an integer. The strings simply represent the numbers in words.

Examples:

"one" => 1
"twenty" => 20
"two hundred forty-six" => 246
"seven hundred eighty-three thousand nine hundred and nineteen" => 783919
Additional Notes:

The minimum number is "zero" (inclusively)
The maximum number, which must be supported is 1 million (inclusively)
The "and" in e.g. "one hundred and twenty-four" is optional, in some cases it's present and in others it's not
All tested numbers are valid, you don't need to validate them

=end

def parse_int(string)
    @numbers = {
        "zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, 
        "ten" => 10, "eleven" => 11, "twelve" => 12, "thirteen" => 13, "fourteen" => 14, "fifteen" => 15, "sixteen" => 16, 
        "seventeen" => 17, "eighteen" => 18, "nineteen" => 19, "twenty" => 20, "thirty" => 30, "forty" => 40, "fifty" => 50, 
        "sixty" => 60, "seventy" => 70, "eighty" => 80, "ninety" => 90}
    @mul = { "hundred" => 100, "thousand" => 1000, "million" =>  1000000 };    
    string = string.gsub('-', ' ').gsub(' and', '').split(' ')
    p string
    def helper(string,val)
        return val if string.empty?
        el = string[0]
        val += @numbers[el] if @numbers.include?(el)
        val += @mul[el] * (val % @mul[el]) - (val % @mul[el]) if @mul.include?(el)
        return helper(string[1..],val)
    end
    return helper(string, 0)
end

string = "one-hundred twenty one"

p parse_int(string)

string = "ten"

p parse_int(string)

string = "one hundred and twenty-four"

p parse_int(string)

string = "one thousand three hundred thirty seven "

p parse_int(string)


string = "twenty-six thousand three hundred and fifty-nine"
p parse_int(string)