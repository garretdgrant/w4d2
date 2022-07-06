require_relative "nullpiece"
require_relative "rook"
require_relative "bishop"
require_relative "queen"
require_relative "knight"
require_relative "king"
require_relative "pawn"
require_relative "piece"

class Board
    def initialize
        @rows = Array.new(8){Array.new(8, NullPiece.instance)}
        populate
    end

    def populate
        # white side
        @rows[0][0] = Rook.new("W", self, [0,0])
        @rows[0][7] = Rook.new("W", self, [0,7])

        @rows[0][1] = Knight.new("W", self, [0,1])
        @rows[0][6] = Knight.new("W", self, [0,6])

        @rows[0][2] = Bishop.new("W", self, [0,2])
        @rows[0][5] = Bishop.new("W", self, [0,5])
        
        @rows[0][3] = King.new("W", self, [0,3])
        @rows[0][4] = Queen.new("W", self, [0,4])

        (0..7).each do |i|
            @rows[1][i] = Pawn.new("W", self, [1,i])
        end

        # black side
        @rows[7][0] = Rook.new("B", self, [7,0])
        @rows[7][7] = Rook.new("B", self, [7,7])

        @rows[7][1] = Knight.new("B", self, [7,1])
        @rows[7][6] = Knight.new("B", self, [7,6])

        @rows[7][2] = Bishop.new("B", self, [7,2])
        @rows[7][5] = Bishop.new("B", self, [7,5])
        
        @rows[7][3] = King.new("B", self, [7,3])
        @rows[7][4] = Queen.new("B", self, [7,4])

        (0..7).each do |i|
            @rows[6][i] = Pawn.new("B", self, [6,i])
        end
    end

    def [](pos)
        row = pos[0]
        col = pos[1]
        @rows[row][col]
    end

    def []=(pos, val)
        row = pos[0]
        col = pos[1]
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].valid_move?(end_pos)
            raise "Invalid Move"
        end

        if self[start_pos] == NullPiece.instance || self[start_pos] == nil
            raise "No Piece to Move"
        end

        if end_pos[0] < 0 || end_pos[0] > 7 || end_pos[1] < 0 || end_pos[1] > 7 
            raise "Off the board"
        end

        self[end_pos] = self[start_pos]
        self[start_pos] = NullPiece.instance
    end

    def render
        (0..7).each do |row|
            (0..7).each do |col|
                # pos = [row,col]
                print @rows[row][col].symbol.to_s.ljust(2) + " "
            end
            puts
        end
    end
end

if __FILE__ == $PROGRAM_NAME

b = Board.new
k = King.new("W", b, [6,7])
p k.valid_move?([7,7])
# b.move_piece()
end