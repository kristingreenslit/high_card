# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# cardFront = ranks.shuffle
# cardBack = suits.shuffle
# puts cardFront + cardBack

new_deck = ranks.product(suits)
new_deck.shuffle
# puts new_deck

players = []
puts "Enter number of players"
userInput = gets.chomp.to_i
puts userInput

# next step is to get player names and assign cards
