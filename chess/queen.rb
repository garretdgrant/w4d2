require_relative "piece"
require_relative "slideable"

class Queen < Piece
include Slideable

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :Q
        if color == "W"
            # @symbol = "\u2655".encode("utf-8")
            @symbol = :♕
        else
            # @symbol = "\u265B".encode("utf-8")
            @symbol = :♛
        end
    end

    def get_moves
        slide_down + slide_up + slide_left + slide_right + 
        slide_down_left + slide_down_right + slide_up_left + slide_up_right
    end
end