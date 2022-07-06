require_relative "piece"
require_relative "steppable"

WHITE_PAWN_MOVES = [[1,0],[1,1],[1,-1]]
BLACK_PAWN_MOVES = [[-1, 0], [-1,-1], [-1,1]]

class Pawn  < Piece
include Steppable

    def initialize(color, board, pos)
        super(color, board, pos)
        if color == "W"
            # @symbol = "\u2655".encode("utf-8")
            @symbol = :♙
        else
            # @symbol = "\u265B".encode("utf-8")
            @symbol = :♟
        end
    end

    def get_moves
        moves = steps_pawn

        real_moves = []
        enemy_color = ""
        # check diagonals first for enemy 
        while moves.length > 1
            temp_move = moves.pop
            if self.color == "W"
                enemy_color = "B"
            else
                enemy_color = "W"
            end

            if @board[temp_move].color == enemy_color
                real_moves << temp_move
            end
        end

        # check if forward position is empty
        if @board[moves.first] == NullPiece.instance
            real_moves << moves.first
        end

        real_moves
     end

end

