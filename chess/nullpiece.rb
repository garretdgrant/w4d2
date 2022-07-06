require 'singleton'
class NullPiece
    include Singleton

    attr_reader :color, :symbol

    def initialize
        @color = "N"
        @symbol = :_
    end

end