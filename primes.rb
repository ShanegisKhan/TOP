require "prime"

num = 600851475143


def find_largest_prime_factor(num)
    test = 3
    while (num >= test) do 
        if(test.prime? && (num % test == 0))
            largest_prime_factor = test
            num = num / test
        else
            test = test + 2
        end
    end
    return largest_prime_factor
end

puts find_largest_prime_factor(num)
