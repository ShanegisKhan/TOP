class Die

    def initialize
        roll
    end

    def roll
      @numberShowing = 1 + rand(6)
      cheat
    end
  
    def showing
      @numberShowing
    end

    def cheat
      if @numberShowing == 7
        roll
      end
    end  
end


showing = Die.new.showing
 
 puts showing