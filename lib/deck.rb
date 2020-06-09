require_relative "card"

class Deck
  attr_reader :cards_in_deck

  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']


  def initialize
    @cards_in_deck = build_deck
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards.shuffle
  end

  def deal
    @cards_in_deck.shift(4)
  end
end
