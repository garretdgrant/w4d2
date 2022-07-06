require_relative "piece"
require_relative "steppable"

class Knight  < Piece
include Steppable
    POSSIBLE_MOVES = [ [1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2] ]

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :Kn
    end

    def get_moves
        steps(POSSIBLE_MOVES)
    end

    private
    def move_dirs
        
    end
end