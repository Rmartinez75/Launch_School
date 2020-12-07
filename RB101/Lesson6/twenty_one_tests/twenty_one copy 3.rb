SUITS = ['Hearts', 'Diamond', 'Clubs', 'Spades']
DECK = (2..10).to_a + ['Jack', 'Queen', 'King', 'Ace']

players_cards = []
computer_cards = []

def first_deal(arr)
  suit = []
  num = []
  2.times do
    suit << SUITS.sample
    num << DECK.sample
  end
  arr << num.zip(suit)
end

first_deal(players_cards)
first_deal(computer_cards)

# p players_cards

def add_cards(arr)
  card_hold = []
  arr.each do |first_arr|    
    first_arr.each do |second_arr|
      if second_arr[0] == 'King' || second_arr[0] == 'Queen' || second_arr[0] == 'Jack'
        second_arr[0] = 10
      elsif second_arr[0] =="Ace"
        if card_hold.sum < 11
          second_arr[0] = 11
        else
          second_arr[0] = 1
        end
      end
      card_hold << second_arr[0]    
    end  
  end
  card_hold.sum
end

p add_cards(players_cards).class

puts "Your total is #{add_cards(players_cards)} so far"

# add_cards(players_cards)
# puts "You have a #{players_cards[0][0][0]} of #{players_cards[0][0][1]}"

# def deal_one_card(arr)
#   suit = []
#   num = []
#   suit << SUITS.sample
#   num << DECK.sample
#   arr << num.zip(suit)
# end

# puts "hit(h) or stay(s)?"
# answer = gets.chomp

# if answer == 'h'
#   deal_one_card(players_cards)
# end

# p players_cards


# p players_cards[0][0][0]
# p computer_cards

# p players_cards
# p computer_cards

# puts "You have a #{players_cards[0][0][0]} of #{players_cards[0][0][1]}"

# def deal_one_card(arr)
#   suit = []
#   num = []
#   suit << SUITS.sample
#   num << DECK.sample
#   arr << num.zip(suit)
# end

# puts "hit(h) or stay(s)?"
# answer = gets.chomp

# if answer == 'h'
#   deal_one_card(players_cards)
# end

# p players_cards
# p players_cards[0][0][0]
# p computer_cards

# p players_cards
# p computer_cards
