require 'singleton'
class NullPiece
    include Singleton

    attr_reader :color, :symbol

    def initialize(*arr)
        @color = "N"
        @symbol = :_
    end

    # def =(pos)
    #     nil
    # end

end