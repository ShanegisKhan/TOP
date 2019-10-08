class OrangeTree

    def initialize
        @alive = true
        @height = 1
        @age = 1
        @orangeCount = 0
    end

    def height
       return @height
    end
    
    def OneYearPasses
        @age += 1
        @height += 1
        if @age > 10
            @alive = false
            puts "The tree died."
            exit
        end
        @orangeCount = (@age - 3) * 2
    end
    
    def countTheOranges
        @orangeCount
    end

    def pickAnOrange
        #(which reduces the @orangeCount by one and returns a string telling you how delicious
        # the orange was, or else it just tells you that there are no more oranges to pick 
        # this year
        if @orangeCount > 0
            @orangeCount -= 1        
            puts "Mmmmm... that was a delicious orange!"
        else
            puts "There are no more! D:"
        end

    end
end

orange_tree = OrangeTree.new

