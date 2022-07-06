class Piece
    attr_reader :color, :symbol, :board
    attr_accessor :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        @symbol = ""
    end

    def empty?
        
    end

    def pos=(val)
        @pos = val
    end
end