puts "What is the starting year?"
first_year = gets.chomp.to_i

puts "What is the last year?"
last_year = gets.chomp.to_i

puts " "
puts "Here are all the leap years between " + first_year.to_s + " and " + last_year.to_s + "!"
puts "--------------------------------------------------" 

range = (last_year - first_year) + 1
current_year = first_year

range.times do
    if current_year % 4 == 0 && current_year % 100 != 0
        puts current_year
    elsif current_year % 400 == 0
        puts current_year
    end
    current_year += 1
end