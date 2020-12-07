SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
DECK = (2..10).to_a + ['Jack', 'Queen', 'King', 'Ace']


temp = []

def players_cards(arr)
  suit = []
  num = []
  2.times do
    suit << SUITS.sample
    num << DECK.sample
  end
  arr << num.zip(suit)
end

players_cards(temp)

# puts "You have a #{suit[0]} of #{suit[1]}"

def deal_one_card(suit, num)
  suit << SUITS.sample
  num << DECK.sample
end

# puts "hit(h) or stay(s)?"
# answer = gets.chomp

# if answer == 'h'
#   deal_one_card(suit, num)
# end


p temp