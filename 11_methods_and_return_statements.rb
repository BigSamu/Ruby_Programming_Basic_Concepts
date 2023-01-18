
# A block of code that returns a value
# To avoid writing the same 23code again and again - Reuse

# -----------------------------
# 1) Method with No Parameters
# -----------------------------

def hello()
    puts "hello from method!"
end

hello() # calling mehtod
# output: hello from method!

# NOTE: method can be defined and called also without () if no parameters are
#       passed

# -----------------------------
# 2) Method with Parameters
# -----------------------------

def hello_2(user, id)
    puts "hello #{user}, your user id is #{id}"
end

hello_2("Raghav", 1234)
# output: hello Raghav, your user id is 1234
hello_2("John", 20)
# output: hello Raghav, your user id is 20

# NOTE: Ruby does not support method overloading

# ----------------------------
# 3) Return Statemenrts
# ----------------------------

# 3.1) Explicit Return -> explicitly stop execution flow of a method and return
#                         specific value
def explicit_return_call
    puts 'before return call'
    return 'return call'
    puts 'after return call'
end
  
puts explicit_return_call
# output: before return call
#         return call

# 3.2) Implicit Return -> not explicitly called within a method (ruby returns 
#                         value of last executed instruction in method)

# 3.2.1) Normal Cases

# Example 1
def implicit_return
    if true
        42
    else
        0
    end
end

puts implicit_return # output: 42

# Example 2
def rom_ebook
    'Ruby Object Model - eBook'
end
  
puts rom_ebook # output: "Ruby Object Model - eBook"

# 3.2.2 Special Case -> Assigment Methods
#                    -> return stament behaves differently when dealing with
#                       assignments methods

# Example 3
class MyClass
    def x=(y)
        return 42 # the return is processed but the return value is ignored
        puts 'hello' # never called
    end
end

puts MyClass.new.x = 21 # output: 21


# 3.3) Unexpected Returns -> return key can only be used within a method

# Example 1
# return 42 # LocalJumpError (unexcepected return)
#             (line commented to avoid error)

# Example 2
# [].each{|n| return n} # LocalJumpError (unexcepected return)
#                         (line commented to avoid error)

# Example 3
def hello_3
    'Hello Mehdi!'.tap{|s| return s}
end

puts hello_3 # output: Hello Mehdi!

# 3.4) Return in procs and lambdas