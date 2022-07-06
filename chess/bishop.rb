require_relative "piece"

class Bishop  < Piece
    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :B
    end

    private
    def move_dirs
        vertical_up = [0,1]
    end
end