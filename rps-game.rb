require('./lib/rock-paper-scissors.rb')

puts("Do you want to play against a computer or against another player? Enter 'p' for Another Player and 'c' for Computer")
game_type = gets().chomp().downcase()
if game_type == 'p'
  puts("Enter the input for Player One")
  player_one_input = gets().chomp().downcase()
  puts `clear`
  puts("Enter the input for Player One")
  player_two_input = gets().chomp().downcase()
  puts `clear`
  new_game = RPS.new(player_one_input, player_two_input)
  puts(new_game.first_player_win?())
end
