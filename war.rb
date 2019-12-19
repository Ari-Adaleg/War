jack = 11
queen = 12
king = 13
ace = 14
deck_cards = {
	"Clubs" => [2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace],
	"Diamonds" => [2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace],
	"Hearts" => [2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace],
	"Spades" => [2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace]
}

suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

count1 = 0
count2 = 0

while !deck_cards.empty?
	rand_suit1 = suits[rand(suits.length)]
	suit1 = deck_cards[rand_suit1]
	player1card = suit1[rand(suit1.length)]

	if player1card == 11
		player1card = "Jack"
	elsif player1card == 12
		player1card = "Queen"
	elsif player1card == 13
		player1card = "King"
	elsif player1card == 14
		player1card = "Ace"
	end

	puts "Player 1 flipped the #{player1card} of #{rand_suit1}."

	if player1card == "Jack"
		player1card = 11
	elsif player1card == "Queen"
		player1card = 12
	elsif player1card == "King"
		player1card = 13
	elsif player1card == "Ace"
		player1card = 14
	end

	suit1.delete(player1card)
	if suit1.empty? == true
		deck_cards.delete(rand_suit1)
		suits.delete(rand_suit1)
	end

	rand_suit2 = suits[rand(suits.length)]
	suit2 = deck_cards[rand_suit2]
	player2card = suit2[rand(suit2.length)]

	if player2card == 11
		player2card = "Jack"
	elsif player2card == 12
		player2card = "Queen"
	elsif player2card == 13
		player2card = "King"
	elsif player2card == 14
		player2card = "Ace"
	end

	puts "Player 2 flipped the #{player2card} of #{rand_suit2}."

	if player2card == "Jack"
		player2card = 11
	elsif player2card == "Queen"
		player2card = 12
	elsif player2card == "King"
		player2card = 13
	elsif player2card == "Ace"
		player2card = 14
	end

	suit2.delete(player2card)

	if suit2.empty? == true
		deck_cards.delete(rand_suit2)
		suits.delete(rand_suit2)
	end

	if player1card > player2card
		puts "Player 1 won this round."
		count1 += 1
	elsif player1card < player2card
		puts "Player 2 won this round."
		count2 += 1
	elsif player1card == player2card
		puts "DRAW"
	end

	puts "Press ENTER to continue:"
	gets
end

results = "Player 1 won #{count1} rounds.\nPlayer 2 won #{count2} rounds.\n\nAnd the winner is....."

if count1 > count2
	puts results + " PLAYER 1!"
elsif count1 < count2
	puts results + " PLAYER 2!"
elsif count1 == count2
	puts "Player 1 won #{count1} rounds.\nPlayer 2 won #{count2} rounds.\n\nThe game is a DRAW."
end
		
		


# puts deck_cards