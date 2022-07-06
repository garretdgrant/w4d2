require_relative "piece"

class King  < Piece

    POSSIBLE_MOVES = [[0, 1], [0, -1], [1, 0], [-1, 0], [1, 1], [-1, -1], [1, -1], [-1, 1] ]

    def initialize(color, board, pos)
        super(color, board, pos)
        @symbol = :K
    end

    def valid_move?(ending_pos)
       moves = super(ending_pos, POSSIBLE_MOVES)
       moves.include?(ending_pos)
    end

    private
    def move_dirs
        vertical_up = [0,1]
    end
end
