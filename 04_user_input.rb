
# 1) Printing user input in console
print "Enter your name : "
name = gets.chomp 
print "Enter your ID : "
id = gets.chomp.to_i # '.to_i' converts input to integer
puts "Hello #{name},yYour id is #{id}"