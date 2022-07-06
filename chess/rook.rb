require_relative "piece"
require_relative "slideable"

class Rook < Piece
include Slideable

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :R
    end

    def get_moves
       slide_down + slide_up + slide_left + slide_right
    end
end