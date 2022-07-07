# require_relative "board"
require "byebug"
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

    # does the given move result in a check?
    # if not in check, then move is valid
    def valid_move?
        # debugger
        !@board.in_check?(@color)
    end

    def future_move_valid?(end_pos)
        dup = @board.duped_board
        dup.move_piece(self.pos, end_pos)
        !dup.in_check?(@color)
    end

    def pos=(val)
        @pos = val
    end
end