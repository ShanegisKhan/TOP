puts "What month were you born in?"
month = gets.chomp.to_i
puts "What day were you born on?"
day = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i

birthday = Time.mktime(year, month, day)
current_time = Time.new
seconds = current_time - birthday
minutes = seconds / 60
hours  = minutes / 60
days = hours / 24
spanks = (days / 365).to_i

puts ""
puts "Happy Birthday!"
puts "According to my estimates you are #{spanks} years old!"
puts "So you get #{spanks} spanks!"
puts ":D"