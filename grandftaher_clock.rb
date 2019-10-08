def grandfather_clock &block 
    current_hour = Time.now.hour

    if current_hour == 0
        current_hour = 12
    elsif current_hour > 12
            current_hour = current_hour - 12
    end
    
    current_hour.times do |x|
        block.call 
    end
end

grandfather_clock do
    puts "DONG!"
end

x = 1
grandfather_clock do 
    puts x
    if x == 1
        x = 2
        puts x
        puts ""
        puts x
    end
    x = x * x
    puts x
    puts ""
end