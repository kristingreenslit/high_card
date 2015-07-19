# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
fresh_deck = []

deck = ranks.product(suits)
# pairs elements in 'ranks' and 'suits' arrays
deck_shuffled = deck.shuffle
# shuffles pairs
fresh_deck.push(deck_shuffled)
# pushes shuffled cards into a new array

# need function to deal an element from fresh_deck to each player


puts "Enter a player's name, or type 'play' to immediately start the game"
userInput = gets.chomp
  if userInput != 'play'
    players.push(userInput)
#loop through asking for player names until user enters "play"
  else userInput == 'play'
    players.each { |player| puts 'Player(s) in this game: ' + player }
    puts "let's play!"
  end
