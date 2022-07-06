class Piece
    attr_reader :color, :symbol, :board
    attr_accessor :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        @symbol = ""
    end

    def empty?
        
    end

    def valid_move?(ending_pos, possible_moves)
       
        row = pos[0]
        col = pos[1]

        moves = possible_moves.map do |move|
            new_row = move[0] + row
            new_col = move[1] + col
            [new_row,new_col]
        end

        moves = moves.select do |pos| 
            row, col = pos
            row >= 0 && row <= 7 && col >= 0 && col <= 7 && @board[ending_pos].color != self.color
        end
        moves#.include?(ending_pos)
    end

    def pos=(val)
        @pos = val
    end
end