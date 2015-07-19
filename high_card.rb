# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
fresh_deck = []

deck = ranks.product(suits)
# pair together elements in 'ranks' and 'suits' arrays

deck_shuffled = deck.shuffle
# shuffle pairs

fresh_deck.push(deck_shuffled)
# push shuffled cards into 'fresh_deck' array

num_of_players = players.count
# return number of elements in 'players' array

new_fresh_deck = fresh_deck.drop(num_of_players)
print new_fresh_deck
# match length of 'fresh_deck' array with length of 'players' array

# fresh_hand = players.product(fresh_deck)
# pair elements from 'players' array with elements from 'fresh_deck' array?


puts "Enter a player's name, or type 'play' to immediately start the game"
userInput = gets.chomp
  if userInput != 'play'
    players.push(userInput)
#loop through asking for player names until user enters "play"
  else userInput == 'play'
    players.each { |player| puts 'Player(s) in this game: ' + player }
    puts "let's play!"
  end
