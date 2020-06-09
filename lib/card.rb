class Card
attr_accessor :rank, :suit, :value
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = value()
  end 

  def value
    case @rank
    when 2..10
      return @rank
    when "J"
      return 11
    when "Q"
      return 12
    when "K"
      return 13
    when "A"
      return 14
    end
  end 
  # Methods you may need:
  # - initialize
  # - method that assigns a card its "value"
  # - attribute readers
  # - any other methods you deem necessary
end
