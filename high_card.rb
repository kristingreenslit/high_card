# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
fresh_deck = []

deck = ranks.product(suits)
# ^ pair together elements in 'ranks' and 'suits' arrays
deck_shuffled = deck.shuffle
# ^ shuffle pairs
fresh_deck.push(deck_shuffled)
# ^ push shuffled cards into 'fresh_deck' array

puts "Enter first player's name, or type 'play' to immediately start the game with two players"
userInput = gets.chomp
players.push(userInput)
  if userInput != 'play'
      puts "Enter second player's name"
        userInput = gets.chomp
        players.push(userInput)
  else userInput == 'play'
    userInput.clear
    # ^ remove 'play', the userInput that was pushed into the array
    players.push("Player 1" , "Player 2")
  end

puts players
# def deal_cards(fresh_deck)
#   puts "let's shuffle!"
# end
#
# puts "Enter another player's name, or type 'play' to immediately start the game"
#loop through asking for player names until user enters "play"
