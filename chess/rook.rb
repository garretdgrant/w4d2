require_relative "piece"
require_relative "slideable"

class Rook < Piece
include Slideable

    def initialize(color, board, pos)
        super(color, board, pos)
        if color == "W"
            # @symbol = "\u2655".encode("utf-8")
            @symbol = :♖
        else
            # @symbol = "\u265B".encode("utf-8")
            @symbol = :♜
        end
    end

    def get_moves
       slide_down + slide_up + slide_left + slide_right
    end
end