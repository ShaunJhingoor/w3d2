require_relative "card.rb"

class Board

    attr_reader :num_pairs, :size


    def initialize(num)
        if num.even? 
            raise "Please enter even number"
        end
        @size=num * num
        @pair=@size / 2 
        @grid = Array.new(num) {Array.new (num)}
    end
    def [](pos)
        row, col=pos 
        @grid[row][col]
    end
    def []=(pos,val)
        row, col=pos 
        @grid[row][col]=val 
    end

    def populate
        random_cards = 
        row=
    end


end