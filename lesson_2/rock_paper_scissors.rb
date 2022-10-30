VALID_CHOICES = %w(rock paper scissors spock lizard)
def prompt(message)
  puts("=> #{message}")
end

# why can't I access this hash from within win? definition
# unless it's labeled as a constant? Variable scope confusion.
WINNING_COMBOS = { rock: %w(scissors lizard),
                   paper: %w(rock spock),
                   scissors: %w(paper lizard),
                   spock: %w(rock scissors),
                   lizard: %w(paper spock) }

# returns string 'player', 'computer', or 'tie' depending on who won
def get_winner(player, computer)
  if WINNING_COMBOS.fetch(player.to_sym).include?(computer)
    'player'
  elsif WINNING_COMBOS.fetch(computer.to_sym).include?(player)
    'computer'
  else
    'tie'
  end
end

def display_results(winner)
  case winner
  when 'player'
    prompt("You won!")
  when 'computer'
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def retrieve_choice
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  choice
end

# plays round and returns 'player', 'computer', or 'tie' based on who won
def play_round
  player_choice = retrieve_choice
  computer_choice = VALID_CHOICES.sample

  puts("You chose #{player_choice}; Computer chose #{computer_choice}")

  winner = get_winner(player_choice, computer_choice)
  display_results(winner)
  winner
end

def play_until_score_3
  puts "Welcome to Rock, Paper, Scissors, Spock, Lizard! Let's play until someone wins 3 rounds."
  player_score = 0
  computer_score = 0
  while player_score < 3 && computer_score < 3
    winner = play_round
    case winner
    when 'player'
      player_score += 1
    when 'computer'
      computer_score += 1
    end
    puts("You have #{player_score} points, The computer has #{computer_score} points.")
  end
  if player_score == 3
    puts "You Won 3 rounds!"
  else
    puts "You lose! The computer won 3 rounds!"
  end
end

play_until_score_3()
