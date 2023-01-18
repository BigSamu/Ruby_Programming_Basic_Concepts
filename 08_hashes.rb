
# ---------------------------
# 1) Create Hash
# ---------------------------

# 1.1) Way 1 -> Using '=>'
hash1 = {
    "name"=>"Raghav", 
    "subject"=>"Automation", 
    "topic"=>"Ruby"
}

# 1.2) Way 2 -> Using ':'
hash2 = {
    "name":"Raghav", 
    "subject":"Automation", 
    "topic":"Ruby"
}

# NOTE: Printing Hashes 
# Using puts or print give sames output
# Although different ways of creation of hashes return different formats
puts hash1 # output: {"name"=>"Raghav", "subject"=>"Automation", "topic"=>"Ruby"}
puts hash2  # output: {:name=>"Raghav", :subject=>"Automation", :topic=>"Ruby"}

# ---------------------------
# 2) Hash Size or Length
# ---------------------------
puts hash1.length
puts hash1.size

# ---------------------------
# 3) Access Hash Key-Values
# ---------------------------
puts hash1["name"] # output: Raghav
puts hash2[:"topic"] # output: Ruby

# 4) Loop through a Hash
hash1.each do|key, value|
    puts "#{key} : #{value}"
end