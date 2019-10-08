puts "type in every word of the list you want sorted, one by one, pressing enter after each entry"
puts "When you long want to make any more entries press enter to complete the program."

entry = gets.chomp
unsorted_list = []

until entry == ""
    unsorted_list.push(entry)
    entry = gets.chomp
end

puts unsorted_list.sort