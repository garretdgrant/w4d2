require_relative "piece"

class Rook < Piece
        def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :R
    end

    private
    def move_dirs
        vertical_up = [0,1]
    end
end