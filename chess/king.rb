require_relative "piece"
require_relative "steppable"


class King  < Piece
include Steppable
    POSSIBLE_MOVES = [[0, 1], [0, -1], [1, 0], [-1, 0], [1, 1], [-1, -1], [1, -1], [-1, 1] ]


    def initialize(color, board, pos)
        super(color, board, pos)
        if color == "W"
            @symbol = "\u2654".encode("utf-8")
        else
            @symbol = "\u265A".encode("utf-8")
        end

    end

    def get_moves
       steps(POSSIBLE_MOVES)
    end

end
