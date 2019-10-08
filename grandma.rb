def random_year
    earliest_year = 1930
    range = 20

    return earliest_year + rand(range)
end

puts "IS THAT YOU SONNY?!"
bye_counter = 1

response = gets.chomp

while bye_counter < 3
    if response != response.upcase
        puts "HUH?! SPEAK UP SONNY!"
    elsif response != "BYE"
        puts "NO NOT SINCE " + random_year.to_s + "!"
    else 
        bye_counter += 1
        puts "I'M SORRY WHAT WAS THAT?"
    end
    response = gets.chomp
end