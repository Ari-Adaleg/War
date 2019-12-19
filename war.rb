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


while !deck_cards.empty?
	rand_suit1 = suits[rand(suits.length)]
	suit1 = deck_cards[rand_suit1]
	player1card = suit1[rand(suit1.length)]

	puts "Player 1 flipped the #{player1card} of #{rand_suit1}."
	suit1.delete(player1card)
	if suit1.empty? == true
		deck_cards.delete(rand_suit1)
		suits.delete(rand_suit1)
	end

	rand_suit2 = suits[rand(suits.length)]
	suit2 = deck_cards[rand_suit2]
	player2card = suit2[rand(suit2.length)]

	puts "Player 2 flipped the #{player2card} of #{rand_suit2}."
	suit2.delete(player2card)

	if suit2.empty? == true
		deck_cards.delete(rand_suit2)
		suits.delete(rand_suit2)
	end

	if player1card > player2card
		puts "Player 1 won this round."
	elsif player1card < player2card
		puts "Player 2 won this round."
	elsif player1card == player2card
		puts "DRAW"
	end

	puts "Press ENTER to continue:"
	gets
end

puts deck_cards