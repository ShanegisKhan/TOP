def table_of_contents_printer index, array, line_width
    array[index][0].ljust(line_width/2) + ("page ").rjust(line_width/2) + array[index][1]    
end

table_of_contents = [ ["Numbers", "1"], ["Letters", "72"], ["Variables", "118"] ]
line_width = 40
range = table_of_contents.length

puts "Table of Contents".center 55
puts "~~~~~~~~~~~~~~~~~~~~~~~~".center 55
puts ""

range.times do |i|
    chapter_number = (i+1).to_s
    puts "Chapter #{chapter_number}: " + table_of_contents_printer(i, table_of_contents, line_width)
end

"1" + "2"