require_relative "piece"
require_relative "slideable"

class Bishop  < Piece
include Slideable

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :B
        if color == "W"
            @symbol = "\u2657".encode("utf-8")
        else
            @symbol = "\u265F".encode("utf-8")
        end
    end

    def get_moves
        slide_down_left + slide_down_right + slide_up_left + slide_up_right
    end
end