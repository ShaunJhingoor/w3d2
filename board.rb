require_relative "card.rb"

class Board

    attr_reader :size, :pairs

    def initialize(num)
        if num.odd? 
            raise "Please enter even number"
        end
        @size = num * num
        @pairs = @size / 2 
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
        # count = 0
        # while count < pairs
        #     row = rand(0...@grid.length)
        #     col = rand(0...@grid.length)
        #     row2 = rand(0...@grid.length)
        #     col2= rand(0...@grid.length)
        #     pos = [row, col]
        #     pos2 = [row2, col2]
        #     random_value = ("a".."z").to_a.sample

        #     if self[pos] == nil && self[pos2] == nil && pos2 != pos
        #         self[pos]= (random_value)
        #         self[pos2]= (random_value)
        #         count += 1
        #     end
        # end
        
        alpha = ("a".."z").to_a
        z = alpha += alpha
        shuffled = (z[0..@pairs].to_a).shuffle

        shuffle.map do |el|
            el = Card.new(el)
            @grid.each do |row|
                row.each do |v|
                    v = el
                end
            end
        end



















    end

    def render
        @grid.each do |row|
            puts row.join(" ")
        end
    end
    def won? 
        @grid.flatten.all?{ |card| card.face_up == true}
    end
    def reveal(guessed_pos)
        if @grid[guessed_pos] != 







end