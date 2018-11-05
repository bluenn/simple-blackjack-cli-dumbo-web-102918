
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_dealchoice = gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(total)
  # code hit? here
  prompt_user
  user_dealchoice = get_user_input

  if user_dealchoice == 's'
    return total


  elsif user_dealchoice == 'h'
     points = deal_card
     total+= points


else
    invalid_command
    prompt_user
  end

  total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  initial_total = initial_round
  additional_score = hit? 
  subtotal = initial_total + additional_score
  while subtotal <= 21
   hit?
   display_card_total(subtotal)
 end
 end_game
  # code runner here
end
