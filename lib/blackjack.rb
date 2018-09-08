def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (1..11).to_a.sample
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  total = card_total
  prompt_user
  user_input = get_user_input.chomp
  case user_input
    when "s"
      total
    when "h"
      total += deal_card
      total
    else
      invalid_command
      total
    end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
