module Steppable

    def steps(possible_moves)
        row = pos[0]
        col = pos[1]

        moves = possible_moves.map do |move|
            new_row = move[0] + row
            new_col = move[1] + col
            [new_row,new_col]
        end

        moves = moves.select do |pos| 
            row, col = pos
            row >= 0 && row <= 7 && col >= 0 && col <= 7 && @board[pos].color != self.color
        end
        moves
    end

    def steps_pawn
        if self.color == "W"
            possible_moves = WHITE_PAWN_MOVES.map {|move| move}
        else
            possible_moves = BLACK_PAWN_MOVES.map {|move| move}
        end

        row = pos[0]
        col = pos[1]

        moves = possible_moves.map do |move|
            new_row = move[0] + row
            new_col = move[1] + col
            [new_row,new_col]
        end

        moves = moves.select do |pos| 
            row, col = pos
            row >= 0 && row <= 7 && col >= 0 && col <= 7 && @board[pos].color != self.color
        end
        moves
    end
end