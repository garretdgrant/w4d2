module Slideable

    def get_enemy_color
        enemy_color = ""
        if self.color == "W"
            enemy_color = "B"
        else
            enemy_color = "W"
        end
        enemy_color
    end

    def slide_up
        row = pos[0]
        col = pos[1]
        moves = []
    
        #checking valid moves in front of piece
        while row >= 0 && row < 7
            row += 1

            if @board[[row,col]].color == self.color
                break
            elsif @board[[row,col]].color == get_enemy_color
                moves << [row,col]
                break
            end

            moves << [row,col]
        end
        moves
    end

    def slide_down
        row = pos[0]
        col = pos[1]
        moves = []
        #checking valid moves behind piece
        while row > 0 && row <= 7
            row -= 1

            if @board[[row,col]].color == self.color
                break
            elsif @board[[row,col]].color == get_enemy_color
                moves << [row,col]
                break
            end

            moves << [row,col]
        end
        moves
    end

    def slide_right
        row = pos[0]
        col = pos[1]
        moves = []

        #check moves to the right
        while col >= 0 && col < 7
            col += 1

            if @board[[row,col]].color == self.color
                break
            elsif @board[[row,col]].color == get_enemy_color
                moves << [row,col]
                break
            end

            moves << [row,col]
        end
        moves
    end

    def slide_left
        row = pos[0]
        col = pos[1]
        moves = []
        #check moves to the left
        while col > 0 && col <= 7
            col -= 1

            if @board[[row,col]].color == self.color
                break
            elsif @board[[row,col]].color == get_enemy_color
                moves << [row,col]
                break
            end

            moves << [row,col]
        end
        moves
    end

    # [1, 1] down-right
    def slide_down_right
        row = pos[0]
        col = pos[1]
        moves = []
        #check moves to the down right
        while  row >= 0 && row < 7 && col >= 0 && col < 7
            row += 1
            col += 1

            if @board[[row,col]].color == self.color
                break
            elsif @board[[row,col]].color == get_enemy_color
                moves << [row,col]
                break
            end

            moves << [row,col]
        end
        moves
    end
    # [-1, 1] up-right
    def slide_up_right
        row = pos[0]
        col = pos[1]
        moves = []
        #check moves to the up right
        while row > 0 && row <= 7 && col >= 0 && col < 7
            row -= 1
            col += 1

            if @board[[row,col]].color == self.color
                break
            elsif @board[[row,col]].color == get_enemy_color
                moves << [row,col]
                break
            end

            moves << [row,col]
        end
        moves
    end

    # [1, -1] down-left
    def slide_down_left
        row = pos[0]
        col = pos[1]
        moves = []
        #check moves to the down left
        while  row >= 0 && row < 7 && col > 0 && col <= 7
            row += 1
            col -= 1

            if @board[[row,col]].color == self.color
                break
            elsif @board[[row,col]].color == get_enemy_color
                moves << [row,col]
                break
            end

            moves << [row,col]
        end
        moves
    end

    # [-1, -1] up-left
    def slide_up_left
        row = pos[0]
        col = pos[1]
        moves = []
        #check moves to the up left
        while  row > 0 && row <= 7 && col > 0 && col <= 7
            row -= 1
            col -= 1

            if @board[[row,col]].color == self.color
                break
            elsif @board[[row,col]].color == get_enemy_color
                moves << [row,col]
                break
            end

            moves << [row,col]
        end
        moves
    end

end