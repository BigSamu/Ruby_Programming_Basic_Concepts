
# ---------------------------
# 1) Single Line String
# ---------------------------
str1 = "This is a string"
str2 = 'This is another String'
puts str1
puts str2

# ---------------------------
# 2) Multiline String 
# ---------------------------
# Way 1
str3 = "This is a 
multiline
 string"
puts str3

# Way 2
str4=%/This is
my String/
puts str4

# ---------------------------
# 3) String Interpolation
# ---------------------------
name = "Raghav"
puts "Hello #{name}"

# ---------------------------
# 4) Lenght of a String 
# ---------------------------
# Methods 'size' and 'length' can be used
str5 = "hello"
puts str5.size
puts str5.length

# ---------------------------
# 5) Uppercase and Lowercase
# ---------------------------
str6= "SaMueL"
puts str6.upcase
puts str6.downcase

# ---------------------------
# 6) Reverse
# ---------------------------
puts str7 = "hello"
puts str7.reverse

# ---------------------------
# 7) Include
# ---------------------------
str8 = "Hello"
puts str8.include? "hello" # str5 containes string "hello"? -> False, in contains string "Hello"
puts str8.include? "Hello" # str5 containes string "hello" -> True

# ---------------------------
# 8) Concatenation
# ---------------------------
# Way 1: use a blank space
puts "Hello, " "How are you?"
# Way 2: Use 'concat' property
puts "Hello, ".concat("How are you?")
# Way 3: Use '<<' operator

# ---------------------------
# 9) Freezing
# ---------------------------
str9 = "Hi"
puts str9
# String being able to modify
str9 = str9 << " again"
puts str9
# String not bein able to modify (freeze applied) -> Exception raisen
str9.freeze
# str9 = str9 << " again" # Commenting line to avoid exception being raisen

# ---------------------------
# 10) Comparison
# ---------------------------
# Way 1: using '==' operator
puts "abc" == "abc"
# Way 1: using 'eql' property
puts "abc".eql? "123"

# ---------------------------
# 11) Slicing
# ---------------------------
msg = "Hello from Automation Step by Step"
puts msg
puts msg["Hello"] # returns 'Hello'
puts msg[0] # returns 'H'
puts msg[0,4] # returns 'Hell' -> exclude element at idx 4
puts msg[0..4] # returns 'Hello' -> includs element at idx 4
puts msg[0,msg.length] # returns 'Hello from Automation Step by Step' -> enitre string
puts msg[-4] # returns 'S' -> 4th element from the back
puts msg.length # returns 34, length of string 'msg'