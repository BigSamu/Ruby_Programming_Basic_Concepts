
# ---------------------------
# 1) For Loop
# ---------------------------

# 1.1) Using '..'
num = 10
for i in 1..num do
    print "#{i} "
end 
# output: 1 2 3 4 5 6 7 8 9 10
puts # add new line 

# 1.2) Using array
myarr = ["Red", "Orange", "Blue"]
for i in myarr do
    puts i
end 
# output: Red Orange Blue in separete lines

# ---------------------------
# 2) While Loops
# ---------------------------

# 2.1) Normal While Loop -> executues commands inside until condition becomes
#                           false
x=1
while x<=10 do
    puts x
    x+=1
end
# output: 1 2 3 4 5 6 7 8 9 10 (in separate lines)

# 2.2) Do While Loop -> similar to normal while loop, but with difference loop
#                     will execute at least once
a=1
loop do
    puts "Enter a num greater than 10:"
    num = gets.chomp.to_i
    if num>10
        break
    end
end

# ---------------------------
# 3) Until & Unless Loops
# ---------------------------

# 3.1) Until Loop -> execute code until given cindition evaluates to true
i=1
until i == 10
    puts i
    i+= 1
end
# output: 1 2 3 4 5 6 7 8 9 (in separate lines)

# 3.2) Unless Loop -> execute code if conditional is false. If the conditional
#                     is true, code specified in the else clause is executed
x = 3
unless x<5
    puts "x is greater or equal to 5"
else
    puts "x is less than 5"
end
# output: x is less than 5

# ---------------------------
# 4) Break & Next
# ---------------------------

# 4.1) Break -> used to come out of a loop
x = 1
while x <=10
    if x==5
        break
    end
    puts x
    x+=1
end 
# output: 1 2 3 4 (in separate lines)

# 4.2) Next -> used to skip a particular interation in a loop
for i in 1..10
    if i==5
        next 
    end
    puts i
end
# output: 1 2 3 4 5 6 7 8 9 10 (in separate lines)

# ---------------------------
# 5) Redo & Retry
# ---------------------------

# 5.1) Redo -> repeat the current iteration of the loop
x=1
while x<5
    puts x
    x+=1
    redo if x==5
end 
# output: 1 2 3 4 5

# 5.2) Retry -> repeat the whole loop iteration from the start of 'begin' keyword
#               (retry statement only works inside the 'begin/rescue' block)
for i in 1..10
    begin
    puts i
    raise if i == 10
    rescue
        retry
    end
end
# output: infinite loop printing 10 (to stop it press 'Ctrl+C')
