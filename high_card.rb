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

puts "1 player so far. Enter player names, then type 'play' to start the game"
userInput = gets.chomp
  if userInput != 'play'
    players.push(userInput)
    puts players
  else userInput == 'play'
    puts "let's play!"
  end
