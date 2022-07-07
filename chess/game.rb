require_relative "board"
require_relative "player"

class Game
    def initialize
        @board = Board.new
        @player_1 = Player.new("Player 1")
        @player_2 = Player.new("Player 2")
        @current_player = @player_1
    end

    def play
        while !@board.checkmate?("W") || !@board.checkmate?("B")
            @board.render
            start_pos, end_pos = @current_player.get_input
            
            while @board[start_pos].future_move_valid(end_pos)
                start_pos, end_pos = @current_player.get_input
            end


            @board.move_piece(start_pos, end_pos)
            self.switch_player!
        end
    end

    def switch_player!
        if @current_player == @player_1
            @current_player = @player_2
        else
            @current_player = @player_1
        end
    end

end

if __FILE__ == $PROGRAM_NAME
    game = Game.new
    game.play
end