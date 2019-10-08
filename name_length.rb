puts "What is your first name?"
first_name = gets.chomp

puts "And what is your middle name?"
middle_name = gets.chomp

puts "And your last name?"
last_name = gets.chomp

puts "\nWell hello " + first_name + " " + middle_name + " " + last_name + "!"

name_length = first_name.length + middle_name.length + last_name.length
puts "Did you know that your name is " + name_length.to_s + " letters long?"
