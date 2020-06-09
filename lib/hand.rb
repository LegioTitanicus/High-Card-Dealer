require_relative "card"

class Hand
    # attr_writer :cards_in_hand
    def initialize(dealt_hand)
        @cards_in_hand = dealt_hand
    end

    def display_hand
        display_string = ""
        @cards_in_hand.each { |card| display_string += "#{card.rank}#{card.suit} "}
        display_string
    end
end

























    # def initialize()
    #     @hand = []
    # end
    # def show_hand
    #     @hand.each { |card| puts card}
    # end