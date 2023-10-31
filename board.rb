require_relative "card.rb"

class Board

    attr_reader :num_pairs


    def initialize(num_pairs)
        @num_pairs - num_pairs
        @grid = Array.new(num_pairs) {Array.new (num_pairs)}
    end

    def populate
        random_cards = (0..num_pairs)

    end


end