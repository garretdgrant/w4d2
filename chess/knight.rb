require_relative "piece"

class Knight  < Piece

    POSSIBLE_MOVES = [ [1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2] ]

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :Kn
    end

    private
    def move_dirs
        
    end
end