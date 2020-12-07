SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
DECK = (2..10).to_a + ['Jack', 'Queen', 'King', 'Ace']

def prompt(msg)
  puts "=> #{msg}"
end

prompt('Welocome to the game 21. Would you like to play?(y or n)')
    play_answer = gets.chomp

loop do
  loop do
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

    def add_cards(arr)
      card_hold = []
      arr.each do |first_arr|
        first_arr.each do |second_arr|
          if second_arr[0] == 'King' ||
            second_arr[0] == 'Queen' ||
            second_arr[0] == 'Jack'
            second_arr[0] = 10
          elsif second_arr[0] == "Ace"
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

    def deal_one_card(arr)
      card_hold = []
      card_hold << DECK.sample
      card_hold << SUITS.sample
      arr[0] << card_hold
    end

    

    if play_answer == 'y' || play_answer == 'Y'
      first_deal(players_cards)
      first_deal(computer_cards)
    elsif play_answer == 'n' || play_answer == 'N'
      break
    end

    sleep 1

    prompt("Computer is showing #{computer_cards[0][0][0]} of #{computer_cards[0][0][1]}")

    prompt("You were dealt #{players_cards[0][0][0]} of #{players_cards[0][0][1]} and #{players_cards[0][1][0]} of #{players_cards[0][1][1]} totaling: #{add_cards(players_cards)}")

    if add_cards(players_cards) == 21
      prompt('YOU WON!!')
      break
    end

    if add_cards(computer_cards) == 21
      prompt('Sorry. You lost. Dealer has 21!')
      break
    end

    loop do
      puts "hit(h) or stay(s)?"
      answer = gets.chomp

      if answer == 'h'
        deal_one_card(players_cards)
      elsif answer == 's'
        break
      else
        prompt('That is not a valid choice. Please try again.')
      end

      sleep 1

      prompt("#{players_cards[0][-1][0]} of #{players_cards[0][-1][1]}")
      prompt("Totaling: #{add_cards(players_cards)}")
      
      if add_cards(players_cards) > 21
        prompt("Sorry. Its a bust! Dealer wins")
        break
      end 
    end

    sleep 1

    prompt("Dealer has #{computer_cards[0][0][0]} of #{computer_cards[0][0][1]} and #{computer_cards[0][1][0]} of #{computer_cards[0][1][1]}:")
    sleep 1

    loop do
      deal_one_card(computer_cards)
      puts "#{computer_cards[0][-1][0]} of #{computer_cards[0][-1][1]}"
      if add_cards(computer_cards) >= 17
        break
      end
      sleep 1
    end

    if add_cards(computer_cards) > add_cards(players_cards) && add_cards(computer_cards) <= 21
      prompt("Dealer wins!")
      puts "#{add_cards(computer_cards)} to #{add_cards(players_cards)}"
    elsif add_cards(players_cards) > add_cards(computer_cards) && add_cards(players_cards) <= 21
      prompt("You win!")
      puts "#{add_cards(players_cards)} to #{add_cards(computer_cards)}"
    elsif add_cards(computer_cards) == add_cards(players_cards)
      prompt("Its a tie #{add_cards(players_cards)} to #{add_cards(computer_cards)}!")
    else
      prompt("Dealer busted. You win #{add_cards(players_cards)} to #{add_cards(computer_cards)}!")
    end

    break
  end

  prompt("Would you like to play again?(y or n)")
  play_again = gets.chomp
  if play_again == 'y'
    redo
  else
    prompt("Thank you for playing. Bye!")
    break
  end
end
