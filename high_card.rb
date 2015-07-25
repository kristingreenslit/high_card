ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = [ "Hearts", "Spades", "Clubs", "Diamonds" ]

players = []
# ^ array that player names are pushed into when user enters them
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
  else
     userInput.clear
     # ^ remove 'play', the userInput that was pushed into the array
     players.insert(0 , "Player 1")
     players.insert(1 , "Player 2")
     # ^ push player names into specific index positions in players array since .clear retains [0] with empty value
  end

card_1 = deck_shuffled[0]
card_2 = deck_shuffled[1]

rank_1 = card_1[0]
rank_2 = card_2[0]
# ^ var created so that index position [0] can be evaluated for each card that's dealt to a player.
# the suit for each card (index position [1]) will never need to be evaluated when determining a winner

puts "#{players[0]}: #{rank_1} of #{card_1[1]}"
puts "#{players[1]}: #{rank_2} of #{card_2[1]}"
# ^ editing puts statements allowed for the removal of .inspect from var's card_1 and card_2

if ranks.index(rank_1) > ranks.index(rank_2)
  puts "#{players[0]} wins!"
elsif ranks.index(rank_1) < ranks.index(rank_2)
  puts "#{players[1]} wins!"
else
  puts "It's a tie between #{players[0]} and #{players[1]}!"
  # puts "It's a tie between "players[0] + " and " + players[1] + "!"
  # ^ changed all puts statements to mirror standard ruby notation (used to look more like js)
end
