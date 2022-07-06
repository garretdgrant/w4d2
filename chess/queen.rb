require_relative "piece"

class Queen  < Piece
    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :Q
    end

    private
    def move_dirs
        vertical_up = [0,1]
    end
end