# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits)
# ^ pair together elements in 'ranks' and 'suits' arrays
deck_shuffled = deck.shuffle
# ^ shuffle pairs

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
    players.insert(0 , "Player 1")
    players.insert(1 , "Player 2")
    # ^ push player names into specific index positions since .clear retains [0] with empty value
  end

player1_hand = puts players[0] + ": " + deck_shuffled[0].inspect
player2_hand = puts players[1] + ": " + deck_shuffled[1].inspect

if player1_hand < player2_hand
  puts players[0] + " " + "wins!"
elsif player1_hand > player2_hand
  puts players[1] + " " + "wins!"
else player1_hand == player2_hand
  puts "It's a tie!"
end
