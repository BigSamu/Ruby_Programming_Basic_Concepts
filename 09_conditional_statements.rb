
# ----------------------------------
# 1) If/Else Conditional Statements
# ----------------------------------

if 2>1
    puts "2 is greater"
end
# output: 2 is greater

age = 18
if age>18
    puts "You are eligible to Drive"
elsif age <= 18
    puts "You are NOT eligible to Drive"
else
    puts "Enter a valid input"
end
# output: You are NOT eligible to Drive

# ---------------------------
# 2) Ternary Statement
# ---------------------------

out1 = (2>1) ? "2 is greater" : "2 is NOT greater"
puts out1 # output: 2 is greater
out2 = (2>3) ? "2 is greater" : "2 is NOT greater"
puts out2 # output: 2 is not greater

# ---------------------------
# 3) Case Stament
# ---------------------------

color = "red"
case color
when "red"
    puts "Color is red"
else
    puts "Color is NOT red"
end
# output: Color is red

print "Enter a day num : "
day = gets.chomp.to_i
case day
when 1
    puts "Today is Monday"
when 2
    puts "Today is Tuesday"
else
    puts "Enter valid input"
end 
# output: if 1 is entered -> Today is Monday
#         if 2 is entered -> Today is Tuesday
#         anything else -> Enter valid input