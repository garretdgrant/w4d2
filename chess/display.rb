require "colorize"
require "board"

class Display
    def initialize

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