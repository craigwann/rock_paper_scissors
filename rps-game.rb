require('./lib/rock-paper-scissors.rb')

puts("Do you want to play against a computer or against another player? Enter 'p' for Another Player and 'c' for Computer")
game_type = gets().chomp().downcase()
if game_type == 'p'
  puts("Enter the input for Player One")
  player_one_input = gets().chomp().downcase()
  puts `clear`
  puts("Enter the input for Player Two")
  player_two_input = gets().chomp().downcase()
  puts `clear`
  new_game = RPS.new(player_one_input, player_two_input)
  puts("Did player 1 win?",  new_game.first_player_win?())

elsif game_type == 'c'
  puts("Enter the input for the player")
  player_input = gets().chomp().downcase()
  computer_input = ["rock", "paper", "scissors"].shuffle()[0]
  new_game = RPS.new(player_input, computer_input)
  puts("The computer played " + computer_input + " Did you win? ", new_game.first_player_win?())
end
