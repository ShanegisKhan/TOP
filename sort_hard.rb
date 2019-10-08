

puts "type in every word of the list you want sorted, one by one, pressing enter after each entry"
puts "When you long want to make any more entries press enter to complete the program."

entry = gets.chomp
unsorted_list = []

until entry == ""
    unsorted_list.push(entry)
    entry = gets.chomp
end

##unsorted_list.each_index do |first|
  ##  unsorted_list.each_index do |second|
    ##    if unsorted_list[first] < unsorted_list[second]
      ##      unsorted_list[first], unsorted_list[second] = unsorted_list[second], unsorted_list[first]
        ##    puts "[#{unsorted_list.join(', ')}]"
        ##end
    ##end
##end

##puts unsorted_list.join(', ')

sorted_list = []

while unsorted_list.length != 0
    sorted_list.push(unsorted_list.min)
    unsorted_list.delete(unsorted_list.min)
end

puts sorted_list.join(", ")