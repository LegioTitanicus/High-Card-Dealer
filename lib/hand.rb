require_relative "card"

class Hand
    attr_reader :value, :cards_in_hand
    def initialize(dealt_hand)
        @cards_in_hand = dealt_hand
        @value = 0
    end

    def display_hand
        display_string = ""
        @cards_in_hand.each { |card| display_string += "#{card.rank}#{card.suit} "}
        display_string
    end

    def calc_hand_value
        @cards_in_hand.each { |card| @value += card.value }
        @value
    end


end

























    # def initialize()
    #     @hand = []
    # end
    # def show_hand
    #     @hand.each { |card| puts card}
    # end