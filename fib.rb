MAX_CYCLES = 5000
max_range = 400000
require 'benchmark'

time = Benchmark.realtime do
    def fib_seq(num, max_range)
        # Error check
        if num < 0 then
           # raise ArgumentError, "The number must be a positive integer"
           num = MAX_CYCLES
        end

        if num > MAX_CYCLES
            num = MAX_CYCLES
        end
    
        # Terminating base cases
        return [] if num == 0
        return [0] if num == 1
        return [0,1] if num == 2

    
        # Recursion
        seq = fib_seq(num - 1, max_range) 

        
        # The recursive function
        if seq[-2] + seq[-1] <= max_range
            seq << seq[-2] + seq[-1]
        end
        return seq
    end
end


fib_array = fib_seq(100, max_range)

even_array = []

fib_array.length.times do |i|
    if fib_array[i] != 0 && fib_array[i] % 2 == 0
        even_array << fib_array[i]
    end
end

even_fib_sum = even_array.inject(:+)

puts ""
puts "Here is the full sequence of fibonacci numbers below #{max_range}"
puts "---------------------------------------------------------------"
puts fib_array[2..-1].join(', ')
puts ""
puts "Here is the full sequence of even fibonacci numbers below #{max_range}"
puts "--------------------------------------------------------------------"
puts even_array.join(', ')
puts ""
puts "The sum of all the even numbers in the fibonacci sequence below 4,000,000 is: #{even_fib_sum}"
puts ""
puts "Time elapsed: #{time} seconds"
