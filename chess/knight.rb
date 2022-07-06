require_relative "piece"
require_relative "steppable"

class Knight < Piece
include Steppable
    POSSIBLE_MOVES = [ [1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2] ]

    def initialize(color, board, pos)
        super(color, board, pos)
        if color == "W"
            # @symbol = "\u2655".encode("utf-8")
            @symbol = :♘
        else
            # @symbol = "\u265B".encode("utf-8")
            @symbol = :♞
        end
    end

    def get_moves
        steps(POSSIBLE_MOVES)
    end

    private
    def move_dirs
        
    end
end