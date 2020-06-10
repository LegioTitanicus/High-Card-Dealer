require 'pry'
require_relative "lib/deck"
require_relative "lib/hand"

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.

puts "GAME START!"

# Your game logic here.

# create a deck variable and set it to a new Deck object
deck = Deck.new

# print to the console that the Deck has been created
puts "The deck has been created, it has #{deck.cards_in_deck.length} cards."

# deck should already be randomly shuffled
    #create rspec test to confirm it's not in order

# deal 4 cards to each player ( player variables declared in game.rb) aka a new Hand object
#   player_1   and   player_2
player_1 = Hand.new(deck.deal)
player_2 = Hand.new(deck.deal)

puts "Player 1 was dealt #{player_1.display_hand}"
puts "Player 2 was dealt #{player_2.display_hand}"

# binding.pry
# print each players Hand to the console

player_1.calc_hand_value
player_2.calc_hand_value

puts "Player 1's hand value: #{player_1.value}"
puts "Player 2's hand value: #{player_2.value}"

# binding.pry
def outcome(player_1, player_2)
    if player_1.value == player_2.value
        return "Game is a TIE!"
    elsif player_1.value > player_2.value
        return "Player 1 wins the game!"
    else 
        return "Player 2 wins the game!"
    end 
end 

puts outcome(player_1, player_2)
# calculate the value (integer) of each (players) Hand using the Card class
# print each players Hand value
# compare each players Hand value to determine who wins/tie

