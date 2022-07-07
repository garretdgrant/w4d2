class Player
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def get_input
        print "#{name} pick a piece: "
        starting_pos = gets.chomp.split(" ")

        print "#{name} move your piece: "
        ending_pos = gets.chomp.split(" ")

        [starting_pos, ending_pos]
    end
end