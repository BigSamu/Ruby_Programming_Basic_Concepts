
# ---------------------------
# 1) Create Array
# ---------------------------
arr1 = [1,2,3,4,5,6]
arr2 = Array.new(10)

# NOTE: Printing Array
# Using puts -> print element in separete lines
puts arr1 # output: 1 2 3 4 5 6 (in separate lines)
# Using print ->  print elements in same line using []
print arr1 # output: [1,2,3,4,5,6]
puts # move to next line (used in combination with 'print')

# NOTE: examples below will use only 'puts' command.

# ---------------------------
# 2) Array Size or Length
# ---------------------------
puts arr1.length
puts arr2.size

# ---------------------------
# 3) Access to Array Elements
# ---------------------------

# 3.1) Array.at(n) -> access element at index n (does not provide default
#                     error if out of index)
puts arr1.at(2) # output: 3 (element at idx 2 in arr1)
puts arr1.at(10) # output: empty line (no element at idx 10 for arr1)

# 3.2) Array.fetch(n)  -> access element at index n (does not provide default
#                     error if out of index)
puts arr1.fetch(2) # output: 3 (element at idx 2 in arr1)
# puts arr1.fetch(10) # output: IndexError .... (no element at idx 10 for arr1)
                      # command commented
# 3.3) Array.first and Array.last -> return first and last elements
puts arr1.first # output: 1
puts arr1.last # output: 6

# 3.4) Arry.take(n) -> returns the first n elements of an array
print arr1.take(3) # output: [1,2,3]
puts
# 3.5) Array.push(obj) and Array << (obj) -> add item to the end of array
print arr1.push(7) # output: [1,2,3,4,5,6,7]
puts
print arr1 << 8 # output: [1,2,3,4,5,6,7,8]
puts

# 3.5) Array.unshift(obj) -> add item to the start of array
print arr1.unshift(0) # output: [0,1,2,3,4,5,6,7,8]
puts

# 3.5) Array.insert(n, obj) -> add item at index n in array
print arr1.insert(3,2.5) # output: [0,1,2,2.5,3,4,5,6,7,8]
puts

# 3.6) Array.drop(n) -> return elements after first n elements have been dropped
#                       (although original array is mantained)
print arr1.drop(4) # output: [3,4,5,6,7,8]
puts

# 3.7) Array.pop(n) -> remove last n element from array and return them
print arr1.pop(2) # output: [7,8]
puts
print arr1.pop # output: 6 (same as arr1.pop(1)) 
puts

# 3.8) Array.shift(n) -> remove first n element from array and return them
print arr1.shift(3) # output: [0,1,2]
puts
print arr1.shift  # output: 2.5 (same as arr1.shift)
puts

# 3.8) Array.delete(obj) -> removes the specific item and return it
arr3 = [1,2,3,4,4,4,4,5,6,6]
puts arr3.delete(1) # output: 1
puts arr3.delete(6) # output: 6
puts arr3.delete(10) # output: empty line (no element 10 in arr3)

# 3.9) Array.uniq -> remove any duplicates items and returns array with no duplicates
print arr3.uniq # output: [2,3,4,5]
puts

# ---------------------------
# 4) Loop through an Array
# ---------------------------
arr1.each do|idx|
    puts "#{idx}"
end
# output: 3 4 5 in separate lines