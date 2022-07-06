require_relative "piece"

class Pawn  < Piece
    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :P
    end

    private
    def move_dirs
        vertical_up = [0,1]
    end
end